class Person
  attr_accessor :id, :name, :age, :parent_permession

  def initialize(age, name = 'unkown', parent_permession: true)
    @id = rand
    @name = name
    @parent_permession = parent_permession
    @age = age
  end

  def can_use_services?
    @age >= 18 || @parent_permession
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(13)
person.name = 'person'
person.parent_permession = true
puts person
