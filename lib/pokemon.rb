class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(id:nil, name:, type:, db:)
    @name=name
    @type=type
    @id=id
    @db=db
  end
  
  def save
    sql = "INSERT INTO pokemon (name, type) VALUES (?, ?)"
    db.execute(sql, self.name, self.type)
  end
  
end
