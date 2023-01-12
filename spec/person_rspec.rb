require_relative '../person'

describe Person do
  before(:all) do
    @person = Person.new(60, 'Lucia', parent_permission: true)
  end

  context 'When testing the person class' do
    it 'The name must contain: Lucia' do
      expect(@person.name).to eq 'Lucia'
    end
  end
  context 'When testing the person class' do
    it 'The age must be: 60' do
      expect(@person.age).to eq 60
    end
  end
  context 'When testing the person class' do
    it 'The parent permission must be: true' do
      expect(@person.parent_permission).to be true
    end
  end
end
