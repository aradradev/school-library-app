require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

student = Student.new(1, 'Math')
teacher = Teacher.new(2, 'Physics')

puts "Student name: #{student.name}"
puts "Student age: #{student.age}"
puts "Student classroom: #{student.classroom}"
puts "Can student use services? #{student.can_use_services?}"
puts "Playing hooky: #{student.play_hooky}"

puts "Teacher name: #{teacher.name}"
puts "Teacher age: #{teacher.age}"
puts "Teacher specialization: #{teacher.specialization}"
puts "Can teacher use services? #{teacher.can_use_services?}"

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
