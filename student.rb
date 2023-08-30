require './person'
require './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(id, _classroom, name = 'Unknown', age = nil, parent_permission = true)
    super(id, name, age, parent_permission)
    @classroom = nil
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
