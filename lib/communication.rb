require 'pry'

class Communication
  attr_reader :input

  def self.welcome
  "      Welcome to :*:~~ BATTLESHIP ~~:*:"
  end

  def self.menu
  "      Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.instructions
  "      BATTLESHIP Instructions:
      You are an adept Naval Captain sailing the high seas,
      your majestic fleet is powerful... but so is your Enemies'!

      The object of the game is to sink all of your opponents
      ships before they sink yours. Both you and your opposition
      will place their ships on the board in battle formation,
      but will not be able to see any ships other than their own.

      You will take turns firing shots at each other blindly,
      guessing locations of enemy ships by using coordinates
      of the grid that represent the game board. For example,
      the top-left space of the grid is A1, the bottom right
      is D4. Try to score hits against your opponent and
      sink their Battleships!

      The battle is over when one player has no more ships left,
      Good Luck sailor!"
  end

  def self.try_again
  "      Try again, genius"
  end

  def self.player_place_first_ship
    "      Human, I have laid out my ships on the grid.
      You now need to layout your two ships.
      The first is two units long and the
      second is three units long.
      The grid has A1 at the top left and D4 at the bottom right.

      Enter the squares for the two-unit ship:"
  end

  def self.player_place_second_ship
    "      Enter the squares for the three-unit ship:"
  end

  def self.invalid_location_format
    "      Invalid ship location, please enter the coordinates
           of the two endpoints of the ship with the format: A1 A2"
  end

  def self.diagonal_ship
    "      Invalid ship orientation, please place the ship horizontally
           or vertically, no diagonals"
  end

  def self.invalid_ship_size
    "      Invalid ship coordinates, please enter coordinates that match
           the size of the ship you are placing.
           two-unit ship examples: A1 A2 (horizontal), or A1 B1 (vertical)
           three-unit ship examples: A1 A3 (horizontal), or A1 C1 (vertical)"
  end

end

# com = Communication.new
# puts com.welcome
# puts com.menu
# puts com.instructions
