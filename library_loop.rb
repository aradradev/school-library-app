require_relative 'menu'

def library_loop(app)
  menu = Menu.new(app)

  loop do
    app.display_menu
    user_choice = gets.chomp.to_i
    menu.execute_choice(user_choice)

    break if user_choice == 7
  end
end
