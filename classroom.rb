require_relative './student'

class ClassRoom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def addstudent(student)
    @students.push(student)
    student.classroom = @label
  end
end

# classa = ClassRoom.new('classroom a')
# classb = ClassRoom.new('classroom b')

# student1 = Student.new(15, 'jose ', classa, '', parent_permission: false)
# student2 = Student.new(22, 'pedro', classa, '', parent_permission: false)
# student3 = Student.new(30, 'juan ', classb, '', parent_permission: false)

# classa.addstudent(student1)
# classa.addstudent(student2)
# classb.addstudent(student3)

# puts "#{student1.name} #{student1.classroom}"
# puts "#{student2.name} #{student2.classroom}"
# puts "#{student3.name} #{student3.classroom}"
