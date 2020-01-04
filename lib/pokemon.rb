class Pokemon

  attr_accessor :name, :type, :id
  
  def initialized(:name,:type, id:nil)
    @name=name
    @type=type
    @id=id
  end
  
end
