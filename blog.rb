require "./model"
require "./user"
require "./post"

Model.set_db "blog.db"

posts = Post.all

posts.each do |post|
  puts post.title
  puts post.body
  puts 
end