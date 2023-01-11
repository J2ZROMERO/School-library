require './trimmer_decorator'
require './person'

describe TrimmerDecorator do
  describe 'when the trimmer decorator class runs' do
    it 'returns the correct must give us the first 9 characters of a name' do
      person = Person.new(10, 'jose juan zepeda Romero', 'nickname')
      decorator = TrimmerDecorator.new(person)
      expect(decorator.correct_name).to eq 'jose juan '
    end
  end
end
