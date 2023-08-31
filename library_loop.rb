require_relative 'menu'

def library_loop(app)
  menu = Menu.new(app)

  loop do
    app.display_menu
    choice = gets.chomp.to_i
    menu.execute_choice(choice)

    break if choice == 7
  end
end
