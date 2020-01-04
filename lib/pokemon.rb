class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(id:, name:, type:, db:)
    @name=name
    @type=type
    @id=id
    @db=db
  end
  
  def save
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO pokemon (name, type) 
        VALUES (?, ?)
      SQL

      DB[:conn].execute(sql, self.name, self.grade)

      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
  
end
