require './person'


class Student < Person
  attr_accessor :classroom

  def initialize(age, name, classroom, parent_permission)
    super([age, name, parent_permission])
    @classroom = classroom.label
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
