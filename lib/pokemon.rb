class Pokemon

  attr_accessor :name, :type, :id

  def initialize(id:, name:, type:, hp: nil, db:)
    @name=name
    @type=type
    @id=id
  end
  
end
