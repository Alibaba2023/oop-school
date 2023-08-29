class Person
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @parent_permission = parent_permission
    @age = age
  end

  private

  def is_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end
end

person = Person.new(25)
person.name="Ali"
person.parent_permission=true
puts person
