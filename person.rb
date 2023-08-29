class Person
  attr_reader :id
  attr_accessor :name, :age, :parent_permession

  def initialize(age, name = 'unknown', parent_permession: true)
    @id = rand
    @name = name
    @parent_permession = parent_permession
    @age = age
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permession
  end
end

person = Person.new(13)
person.name = 'person'
person.parent_permession = true
person.id
person.name
person.age
person.parent_permession
puts person
