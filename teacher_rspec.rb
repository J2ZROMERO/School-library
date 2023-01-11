require './teacher'

describe Teacher do
  before(:all) do
    @teacher = Teacher.new(60, 'Abubakar', 'Medical')
  end

  context 'When testing the Teacher class' do
    it 'The name must contain: Abuabakar' do
      expect(@teacher.name).to eq 'Abubakar'
    end
  end

  context 'When testing the student class' do
    it 'The can_use_services method must be true ' do
      expect(@teacher.can_use_services?).to_not be false
    end
  end
end
