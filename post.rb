class Post < Model
  set_table_name "posts"

  attr_accessor :id, :title, :body, :user_id

  # Initialize a blog post
  def initialize(attrs = {})
    @id = attrs[:id]
    @title = attrs[:title]
    @body = attrs[:body]
    @user_id = attrs[:user_id]
  end

  def user
    User.find @user_id
  end
end