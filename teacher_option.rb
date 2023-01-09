require './teacher'
class TeacherOption
    def initialize(teachers,people)
        @teachers = teachers
        @people = people
    
    end
    
     def teacher_option()
        print 'Age '
        age = gets.chomp.to_i
        print 'Name '
        name = gets.chomp!
        print 'Especiality '
        speciality = gets.chomp!
    
        @teachers << Teacher.new(age, name, speciality)
        @people << Teacher.new(age, name, speciality)
        puts 'Techaer added successfully'
      end
    end
    