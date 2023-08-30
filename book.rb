require_relative 'rental'
require_relative 'person'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(date, person, self)
    @rentals << rental
    person.rentals << rental
    rental.book = self
  end
end
