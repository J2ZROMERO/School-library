require './student_option'
require './classroom'
describe Student do
  before(:all) do
    @student = Student.new(20, 'Lucca', ClassRoom.new('class b'), '', parent_permission: true)
  end

  context 'When testing the student class' do
    it 'The name must contain: Lucca' do
      expect(@student.name).to eq 'Lucca'
    end
  end

  context 'When testing the student class' do
    it 'The play_hooky option must contain: ¯(ツ)/¯ ' do
      expect(@student.play_hooky).to eq '¯(ツ)/¯'
    end
  end
end
