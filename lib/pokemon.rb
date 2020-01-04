class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(id:nil, name:, type:, db:)
    @name=name
    @type=type
    @id=id
    @db=db
  end
  
  def save
    if self.id
      sql = <<-SQL
        INSERT INTO pokemon (name, type) 
        VALUES (?, ?)
      SQL

      db.execute(sql, self.name, self.type)

      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
  
end
