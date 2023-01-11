require './capitalize_decorator'
require './person'
describe CapitalizeDecorator do
  describe 'when the capitalize_decorator runs' do
    it 'the method must change the first letter of the name to capitalized' do
      person = Person.new(10,'juan', 'nickname')
      capital = CapitalizeDecorator.new(person)

         expect(capital.correct_name).to eq('JUAN')
    end
  end
end
