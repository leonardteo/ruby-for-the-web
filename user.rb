# User Class
class User < Model
  attr_accessor :id, :first_name, :last_name, :posts

  set_table_name "users"

  # Initialize a user with name
  def initialize(attrs = {})
    @id = attrs[:id]
    @first_name = attrs[:first_name]
    @last_name = attrs[:last_name]
  end

  # Returns the full name
  def name
    "#{first_name} #{last_name}"
  end

  def to_s
    name
  end
end