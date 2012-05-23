namespace :example do
  desc "Example of routes helper in rake task"
  task :posts => :environment do
    puts "items_path = #{posts_path}"
  end
end