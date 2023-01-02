require './person'
class Teacher < Person
  def initialize(name, age, specialization)
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services?()
    true
  end
end

teacher = Teacher.new(40, 'joaquin', 'ortopedia')
puts teacher.can_use_services?
