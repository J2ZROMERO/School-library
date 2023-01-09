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

  def optionselected(data)
    optionsc = OPTIONS.new(@books,@teachers,@students,@people,@rentals)
    options = {
      1 => optionsc.option1,
      2 => optionsc.option2,
      3 => optionsc.option3,
      4 => optionsc.option4,
      5 => optionsc.option5,
      6 => optionsc.option6,
      7 => optionsc.option7
    }
    puts ' '
    send(options.fetch(data, :invalid_option))
  end

  def invalid_option
    puts 'Invalid option. Please try again.'
  end

  def startprogram
    loop do
      entrimessage
      @optionselected = gets.chomp.to_i
      optionselected(@optionselected)
      break unless @optionselected != 7
    end
  end
end

