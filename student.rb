require './person'
class Student < Person
  def initialize(age, name, parent_permision, classroom)
    super(age, name, parent_permision)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student = Student.new(15, 'jose', false, 'A')
puts student.play_hooky
