class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  
  include ActionDispatch::Routing::UrlFor
  include Rails.application.routes.url_helpers
  default_url_options[:host] = 'example.com'
  
  def put_routes
    posts_path
  end
  
  def put_instance_route
    url_for(self)
  end
  
  def self.put_routes
    ### Questo non funziona
    # posts_path
    
    Rails.application.routes.url_helpers.posts_path
  end
  
  def self.put_all_routes
    #Rails.application.routes.url_helpers.posts_path
    #url_for(self)
    raise self.inspect
  end
  
end
