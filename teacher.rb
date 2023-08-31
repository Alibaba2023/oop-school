require_relative 'person'

class Teacher < Person
  def initialize(name, age, specialization, permission: true)
    super(name, age, permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
