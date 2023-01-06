require './person'
require './book'
class Rental
  attr_accessor :date, :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end
end

# rent1 = Rental.new('2020-12-12')
# rent2 = Rental.new('2020-12-25')
# rent3 = Rental.new('2021-12-25')

# persona = Person.new(15, 'jose ', '', parent_permission: false)
# libro = Book.new('Three little pigs', 'Carlos')

# libro.rental_book(rent1)
# libro.rental_book(rent2)
# libro.rental_book(rent3)

# persona.add_rentals(rent1)
# persona.add_rentals(rent2)
# persona.add_rentals(rent3)

# puts "Book #{rent1.date}"
# puts "Person #{rent1.person.name}"
# puts "Title #{rent1.book.title}"
