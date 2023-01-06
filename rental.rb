require './person'
require './book'
class Rental
    attr_accessor :date, :book, :rentalB , :person

def initialize(date)
    @date = date
    @book = book
    @person = person
end

end

rent1 = Rental.new("2020-12-12")
rent2 = Rental.new("2020-12-25")


persona = Person.new(15,"jose ", false)
libro = Book.new("Three little pigs","Carlos")
libro.rentalBook(rent1)
libro.rentalBook(rent2)

persona.addRentals(rent1)

puts "Book "+ rent1.date
puts "Person "+ rent1.person.name
puts "Title "+ rent1.book.title