require "sqlite3"

class Model
  attr_accessor :id, :table_name

  def self.create(attrs)
    self.new attrs
  end

  # Enables setting of the table name in class definition
  def self.set_table_name(new_name)
    @table_name = new_name
  end

  # Sets up the database handler
  def self.set_db(db)
    @@db = SQLite3::Database.new db
  end

  # Queries the database
  def self.all
    # execute2 - first row is always the name of the column
    result = @@db.execute2 "SELECT * FROM #{@table_name}"
    columns = result.shift
    arr = []
    result.each do |row|
      attrs = {}
      columns.each_with_index do |col, i|
        attrs[col.to_sym] = row[i]
      end
      arr.push self.new(attrs)
    end
    arr
  end

  # Finds a single object
  def self.find(id)
    result = @@db.execute2 "SELECT * FROM #{@table_name} WHERE id = #{id} LIMIT 1"
    columns = result.shift
    row = result.first
    if row.nil?
      raise Exception.new "No record found"
    end
    attrs = {}
    columns.each_with_index do |col, i|
      attrs[col.to_sym] = row[i]
    end
    self.new(attrs)
  end

end