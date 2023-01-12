require '../book'

describe Book do
  context 'When testing the books class' do
    it 'title must contain: Pinocho' do
      book = Book.new('Pinocho', 'Amare')
      expect(book.title).to eq 'Pinocho'
    end
  end

  context 'When testing the books class' do
    it 'Author must contain: Amare' do
      book = Book.new('Pinocho', 'Amare')
      expect(book.author).to eq 'Amare'
    end
  end
end
