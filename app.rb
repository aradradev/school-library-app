require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
require_relative 'classroom'

class App
  def initialize()
    @people = []
    @books = []
    @rentals = []
    @classroom = []
  end

  def display_menu
    puts 'Choose an option:'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List rentals for a person'
    puts '7. Quit'
  end

  def list_book
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def list_people
    puts 'List of People:'
    @people.each { |person| puts "ID: #{person.id}, Name: #{person.name}, Age: #{person.age}" }
  end

  def create_person(type)
    puts 'Enter person ID: '
    id = gets.chomp.to_i

    person = if type == 'student'
               create_student(id)
             else
               create_teacher(id)
             end

    @people << person
    puts "#{type.capitalize} created successfully."
  end

  def create_book
    puts 'Enter book title: '
    title = gets.chomp
    puts 'Enter book author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully.'
  end

  def create_rental
    puts 'Enter person ID for rental: '
    person_id = gets.chomp.to_i
    person = @people.find { |p| p.id == person_id }
    if person.nil?
      puts "Person with ID #{person_id} not found."
      return
    end

    puts 'Enter book title for rental: '
    title = gets.chomp
    book = @books.find { |b| b.title == title }
    if book.nil?
      puts "Book with title #{title} not found."
      return
    end
    puts 'Enter rental date (yyyy-mm-dd): '
    date = gets.chomp
    rental = Rental.new(date, person, book)
    @rentals << rental
    puts 'Rental created successfully.'
  end

  def list_rentals(person_id)
    person = @people.find { |p| p.id == person_id }
    if person.nil?
      puts "Person with ID #{person_id} not found."
      return
    end

    puts "Rental for #{person.name}: "
    person.rentals.each do |rental|
      puts "Book: #{rental.book.title}, Date: #{rental.date}"
    end
  end

  def create_student(id)
    puts 'Enter student name: '
    name = gets.chomp
    puts 'Enter student age: '
    age = gets.chomp.to_i
    puts 'Enter student classroom: '
    classroom_label = gets.chomp
    Student.new(id, classroom_label, name, age)
  end

  def create_teacher(id)
    puts 'Enter teacher name: '
    name = gets.chomp
    puts 'Enter teacher age: '
    age = gets.chomp.to_i
    puts 'Enter teacher specialization: '
    specialization = gets.chomp
    Teacher.new(id, specialization, name, age)
  end
end
