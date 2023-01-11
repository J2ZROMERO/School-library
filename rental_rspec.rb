require './rental'
require './teacher'
require './book'
require './student'
require './classroom'
describe Rental do
  before(:all) do
    @teacher = Teacher.new(60, 'Abubakar', 'Medical')
    @student = Student.new(20, 'Lucca', ClassRoom.new('class b'), '', parent_permission: true)
    @book = Book.new('Pinocho', 'Amare')
    @rentals = Rental.new('01-15-2023')
  end

  context 'When testing the rentals class' do
    it 'The date must be: 01-15-2023' do
      expect(@rentals.date).to eq '01-15-2023'
    end
  end

  context 'When testing the rentals class' do
    it 'The name the book ok this rental must be: Pinocho' do
      expect(@book.title).to eq 'Pinocho'
    end
  end

  context 'When testing the rentals class' do
    it 'The name the person who rented the book must be Abubakar' do
      expect(@teacher.name).to eq 'Abubakar'
    end
  end
end
