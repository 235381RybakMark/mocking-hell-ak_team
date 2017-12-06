class Person
  attr_accessor :firstname, :lastname, :id

  def initialize(firstname, lastname, id)
    @firstname = firstname
    @lastname = lastname
    @id = id
  end

  def to_s
    person = "#{firstname} #{lastname}"
    person
  end
end
