require './person'
require './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(id, _classroom, name = 'Unknown', age = nil, parent_permission = true)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def assign_to_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
