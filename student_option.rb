require './student'
require './classroom'
class StudentOption
    def initialize(students,people)
        @students = students
        @people = people
    
    end

   def student_option()
      print 'Age '
      age = gets.chomp.to_i
      print 'Name '
      name = gets.chomp!
      print 'Has the parent permission [Y/N]'
      inputpermission = gets.chomp!
  
      case inputpermission.downcase
      when 'y'
        parent = true
      when 'n'
        parent = false
      else
        puts 'Error selectc the correct option'
      end
      @students << Student.new(age, name, ClassRoom.new(''), '', parent_permission: parent)
      @people << Student.new(age, name, ClassRoom.new(''), '', parent_permission: parent)
      puts 'Student added successfully'
    end
  
  end