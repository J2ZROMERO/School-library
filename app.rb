require './student_option'
require './teacher_option'
require './rental'
require './book'
require './classroom'
require './options'
class App
  def initialize()
    @books = []
    @students = []
    @teachers = []
    @people = []
    @rentals = []
  end

  def entrimessage()
    options = [
      'List all books',
      'List all people',
      'Create a person',
      'Create a book',
      'Create a rental',
      'List all rentals for a given person id',
      'Exit'
    ]
    puts ' '
    puts 'Welcome to School Library App!'
    puts 'Please choose an option by entering a number'
    options.each_with_index do |option, index|
      puts "#{index + 1} - #{option}"
    end
  end

  def optionselected(data, optionclass)
    options = {
      1 => :option1,
      2 => :option2,
      3 => :option3,
      4 => :option4,
      5 => :option5,
      6 => :option6,
      7 => :option7
    }
    # Call the method stored in the value of the options hash with the op object as an argument
    options.fetch(data, :invalid_option).to_proc.call(optionclass)
  end

  def invalid_option
    puts 'Invalid option. Please try again.'
  end

  def startprogram
    optionsc = OPTIONS.new(@books, @teachers, @students, @people, @rentals)
    loop do
      entrimessage
      @optionselected = gets.chomp.to_i
      puts 'a'
      optionselected(@optionselected, optionsc)
      break unless @optionselected != 7
    end
  end
end
