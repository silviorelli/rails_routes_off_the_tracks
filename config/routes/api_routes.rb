Sandbox::Application.routes.draw do
  
  constraints(:subdomain => 'api') do
    resources :recipes
  end
  
end
