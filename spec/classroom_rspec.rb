require '../classroom'
require '../student'

describe ClassRoom do
  context 'When testing the classroom class' do
    it 'The label must contain: class b' do
      classrm = ClassRoom.new('class b')
      expect(classrm.label).to eq 'class b'
    end
  end

  context 'When testing the classroom class' do
    it ' The method add student must add one student and shows the name' do
      classroom = ClassRoom.new('class b')
      student = Student.new(50, 'Jhosep', classroom, '', parent_permission: true)
      classroom.addstudent(student)
      expect(classroom.students[0].name).to eq 'Jhosep'
    end
  end
end
