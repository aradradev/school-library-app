require_relative 'person'
require_relative 'student'
require_relative 'teacher'

# Test the classes
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
