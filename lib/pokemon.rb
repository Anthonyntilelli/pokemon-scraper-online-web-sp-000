class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(id:, name:, type:, db:)
    @name=name
    @type=type
    @id=id
    @db=db
  end
  
end
