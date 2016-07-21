require 'pry'
require_relative 'communication'
require_relative 'ship'

class PlayerPlaceShips

  def initialize
    @possible = ["A1", "A2", "A3", "A4",
                 "B1", "B2", "B3", "B4",
                 "C1", "C2", "C3", "C4",
                 "D1", "D2", "D3", "D4"]
  end

  def first_ship_verify_location_format
    puts Communication.player_place_first_ship
    input = gets.chomp.upcase.split(" ")

    two_unit_ship = Ship.new("2", input)
    until two_unit_ship.valid_location_format?
      puts Communication.invalid_location_format
      input = gets.chomp.upcase.split(" ")
      two_unit_ship = Ship.new("2", input)
    end
    two_unit_ship
  end

  def second_ship_verify_location_format
    puts Communication.player_place_second_ship
    input = gets.chomp.upcase.split(" ")

    three_unit_ship = Ship.new("3", input)
    until three_unit_ship.valid_location_format?
      puts Communication.invalid_location_format
      input = gets.chomp.upcase.split(" ")
      three_unit_ship = Ship.new("3", input)
    end
    three_unit_ship
  end

end
