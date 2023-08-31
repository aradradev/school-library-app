class Menu
  def initialize(app)
    @app = app
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

  def execute_choice(choice)
    case choice
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
    when 7
      exit_menu
    else
      puts 'Invalid choice. Please choose a valid option.'
    end
  end

  private

  def list_books
    @app.list_book
  end

  def list_people
    @app.list_people
  end

  def create_person
    puts 'Enter person type (student/teacher):'
    type = gets.chomp
    @app.create_person(type)
  end

  def create_book
    @app.create_book
  end

  def create_rental
    @app.create_rental
  end

  def list_rentals
    puts 'Enter person id:'
    person_id = gets.chomp.to_i
    @app.list_rentals(person_id)
  end

  def exit_menu
    puts 'Goodbye!'
  end
end
