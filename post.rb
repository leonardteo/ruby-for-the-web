class Post
  attr_accessor :id, :title, :body, :user_id

  # Initialize a blog post
  def initialize(attrs = {})
    @id = attrs[:id]
    @title = attrs[:title]
    @body = attrs[:body]
    @user_id = attrs[:user_id]
  end

  # Factory create method
  def self.create(attrs)
    self.new attrs
  end
end