Sandbox::Application.routes.draw do
  
  resources :posts
  
  # Empty route
  root :to => 'welcome#show'

  # Regular routes
  match 'products/:id', :to => 'catalog#view'
  match 'products/:id' => 'catalog#view'
  
  # Named routes
  match 'logout', :to => 'sessions#destroy', :as => "logout"
  match 'logout' => 'sessions#destroy', :as => "logout"
  
  # Verb  routes
  match "account/overview", :to => "account#overview", :via => "get"
  get "account/overview"
  
  # Resourceful routes
  resources :products do
    collection do
      get  :sold
      post :export
    end
    member do
      post :publish
    end
    put :toggle, :on => :member
  end
  
  # Nested resourceful routes
  resources :projects do
    resources :tasks, :people
  end
  
  # Restricted restful routes
  resources :posts, :except => [:edit]
  resources :posts, :only => [:new, :create]
  
  # REST override 
  resource :session do
    get :create # BAD!!
  end
  
  # Atering action name
  resources :projects, :path_names => { :edit => 'modifica' }
  
  # This route would match photos/12 or /photos/long/path/to/12,
  # setting params[:other] to "12" or "long/path/to/12"
  match 'photos/*other' => 'photos#unknown'

  # Would match books/some/section/last-words-a-memoir with 
  # params[:section] equals to "some/section",
  # and params[:title] equals to"last-words-a-memoir"
  match 'books/*section/:title' => 'books#show'
  
  # This code will redirect /foo/1 to /bar/1s:
  match "/foo/:id", :to => redirect("/bar/%{id}s")

  #This code will redirect /account/proc/john to /johns.
  match 'account/proc/:name', :to => redirect {|params| "/#{params[:name].pluralize}" }
  
  # Constraint on numeric id
  match "/posts/show/:id", :to => "posts#index", :constraints => {:id => /\d/}
  
  # Contraint on sudomain
  match "/foo/bar", :to => "foo#bar", :constraints => {:subdomain => "support"}
  
  # Constraint on ip address
  match "/foo/bar", :to => "foo#bar", :constraints => {:subdomain => /127.0.0.1/}
  
  # Arbitrary constraint
  constraints(:ip => /127.0.0.1/) do
    match  '/questions', :to => redirect("http://www.stackoverflow.com/")
  end

  # Object-based constraint
  class IpRestrictor
    def self.matches?(request)
      request.ip =~ /127.0.0.1/
    end
  end
  constraints IpRestrictor do
    match  '/questions', :to => redirect("http://www.stackoverflow.com/")
  end
  
  # Lambda
  scope :constraints => lambda{|req| req.host == $BLOG_DOMAIN } do
    root :to => "posts#index"
    match 'posts/archive' => 'posts#archive',    :as => 'archive_post'
    match 'posts/:pretty_url' => 'posts#show', :as => 'show_post'    
  end
  
  # Lambda
  scope :constraints => lambda{|req| req.host == $INTRANEWS_DOMAIN} do
    root :to => "intranews#index"
    resources :int,  :as => :intranews, :controller => :intranews, :only => [:index, :show] do
      match 'search' => 'intranews#search',  :on => :collection
    end
  end
  
  # Lambda
  scope :constraints => lambda{|req| !req.session[:user_id].blank? } do
    # logged users routes only
  end
  
  
  
  
  
  
end
