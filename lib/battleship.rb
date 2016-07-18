require 'pry'

class Battleship
  attr_reader :input

  def start
    puts  "Welcome to :*:~~ BATTLESHIP ~~:*:"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    @input = gets.chomp

    

  end

  def play



  end

end

battleship = Battleship.new
battleship.start
