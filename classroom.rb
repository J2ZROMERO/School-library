require_relative './student'

class  ClassRoom
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




#  clase = ClassRoom.new("Room a")
#  claseb = ClassRoom.new("Room b")
#  student = Student.new(15, 'jose',clase,  true)
#  student2 = Student.new(20, 'carlos',claseb,  true) #student declare and class added
#  student3 = Student.new(15, 'jose',clase,  true)

#  clase.addstudent(student3) #class add student and the same class
#  clase.addstudent(student)
 
#  puts student.name + " "+ student.classroom
#  puts student2.name + " "+ student2.classroom
#  puts student3.name + " "+ student3.classroom
 


 

 
