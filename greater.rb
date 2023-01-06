
require './student'
require './teacher'
require './rental'
require './book'
require './classroom'
class Main 

  
  def initialize()

    @books = []
    @students = []
    @teachers = []
    @people = []
    @rentals = []
    begin
      puts " "
      puts " "
    puts "Welcome to School Library App!"
      puts "Please choose an option by entering a number"
      puts "1 - List all books"
      puts "2 - List all people"
      puts "3 - Create a person"
      puts "4 - Create a book"
      puts "5 - Create a rental"
      puts "6 - List all rentals for a given person id"
      puts "7 - Exit"
    
      @optionSelected = gets.chomp.to_i
    case @optionSelected
    when 1
      puts " "
    option1()      
    when 2
      puts " "
      option2()
    when 3
      puts " "
      option3()
    when 4
      puts " "
      option4()
    when 5
      puts " "
      option5()
    when 6
      puts " "
      option6()
    when 7
      puts " "
      option7()
    else
      puts "Invalid option. Please try again."
    end
  end while(@optionSelected != 7)  
  end
  
  
def option1()
  

if @books.length == 0
  puts "There are not books added"
 else
  puts "Books"
 for element in @books
 puts "Title  " + element.title + " "  + "Author " +  element.author
 end
   
 end
 

end

  def option2()
    if @teachers.length == 0 && @students.length == 0
      puts "There are not people added"
     else
      puts "Students"
      for element in @students
       agep =  element.age.to_s
       print "[Student: ] " + "Name: " +  element.name + " " +  "ID:  "+ element.id + " " +  "Age: " +  agep 
       end
     puts "Teachers"
      for element in @teachers
        agep =  element.age.to_s
     print "[Teacher: ] " + "Name: " + element.name + " " + "ID: " + element.id  + " " + "Age: " +  agep 
     end
     
    end
end

  def option3()
puts "Do you want to create a student (1) or a teacher (2)? [
  Input the number]: "
  @personoption = gets.chomp.to_i  

  if @personoption == 1
  
    print "Age "
    age = gets.chomp.to_i 
    print "Name "
    name = gets.chomp! 
    print "Has the parent permission [Y/N]"
    inputpermission = gets.chomp! 
    
    if inputpermission.downcase == 'y'

      parent = true
      
    elsif inputpermission.downcase == 'n'
      parent = false

    else
      puts "Error selectc the correct option"
    end
    @students << Student.new(age,name,ClassRoom.new(''),'',parent_permission: parent)      
    @people << Student.new(age,name,ClassRoom.new(''),'',parent_permission: parent)      
    puts "Student added successfully"

  elsif @personoption == 2

    print "Age "
    age = gets.chomp.to_i 
    print "Name "
    name = gets.chomp! 
    print "Especiality "
    speciality = gets.chomp! 
        
    @teachers << Teacher.new(age,name,speciality)
    @people << Teacher.new(age,name,speciality)
    puts "Techaer added successfully"
  else
puts "person number incorrect choose the options again"
  end

end
  def option4()
    print "Title "
    title = gets.chomp! 
    print "Author "
    author = gets.chomp! 
@books << Book.new(title,author)
puts "Book created successfully"

end
  def option5()
puts "Select a book frmo the following list by number"

counter = 0;
  for element in @books
    numb = counter.to_s
    puts  numb + ") " + "Title  " + element.title + " "  + "Author " +  element.author
    counter += 1
    end
    
   
  bookselected = gets.chomp.to_i  
  puts " "

  puts "Select a person from the following list by number (not id)"
  counter = 0;
  for element in @people
  numb = counter.to_s
  agep =  element.age.to_s
  typeo = element.class.to_s
  puts  numb + ") " + typeo + " " + "Name: " +  element.name + " " +  "ID:  "+ element.id + " " +  "Age: " +  agep 
   counter += 1
  end

  personselected = gets.chomp.to_i  
  puts " "

  puts "Set the current date"
  date = gets.chomp!  
  puts  "Rental created successfully"

rentalelem = Rental.new(date)
rentalelem.book = @books[bookselected]
rentalelem.person = @people[personselected]
  @rentals <<   rentalelem

  puts " "


end 

def option6()
  for element in @people
    typeo = element.class.to_s
    puts  typeo + "Name: " +  element.name + " " +  "ID:  "+ element.id 
    end

    puts "Type the id of the people: "
    idselected = gets.chomp!  
 puts " "
    for element in @rentals
     if element.person.id  == idselected
puts "Date " +  element.date + ", "  + "Book " + element.book.title  + " by " + element.book.author
     else
puts "These person does not have any rentals"
     end
    end
    
    

  
    
  

  end

  def option7()
  puts "Thanks for visiting this app"

  end

end

main  = Main.new
main
