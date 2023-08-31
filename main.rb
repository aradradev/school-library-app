require_relative 'app'
require_relative 'library_loop'

def main
  app = App.new

  puts 'Welcome to the Library Management System!'
  library_loop(app)
end

main
