class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(id:nil, name:, type:, db:)
    @name=name
    @type=type
    @id=id
    @db=db
  end
  
  def self.save(name,type,db)
    sql = "INSERT INTO pokemon (name, type) VALUES (?, ?)"
    db.execute(sql, name, type)
  end
  
  def self.find()
  end
end
