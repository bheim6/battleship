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
    @input = gets.chomp.upcase.split(" ")

    @two_unit_ship = Ship.new("2", @input)
    until @two_unit_ship.valid_location_format?
      puts Communication.invalid_location_format
      @input = gets.chomp.upcase.split(" ")
      @two_unit_ship = Ship.new("2", @input)
    end
  end

  def first_ship_verify_location_is_on_board
    until @possible.include?(@input[0]) && @possible.include?(@input[1])
      puts Communication.location_not_on_the_board
      @input = gets.chomp.upcase.split(" ")
      @two_unit_ship = Ship.new("2", @input)
    end
  end

  def first_ship_verify_horizontal_or_vertical
    until @two_unit_ship.horizontal? || @two_unit_ship.vertical?
      puts Communication.diagonal_ship
      @input = gets.chomp.upcase.split(" ")
      @two_unit_ship = Ship.new("2", @input)
    end
  end

  def first_ship_verify_valid_h_or_z
    until @two_unit_ship.valid_horizontal? || @two_unit_ship.valid_vertical?
      puts Communication.invalid_ship_size
      @input = gets.chomp.upcase.split(" ")
      @two_unit_ship = Ship.new("2", @input)
    end
    @second_ship_possible = @possible - @two_unit_ship.location
  end

end

fleet = PlayerPlaceShips.new

fleet.first_ship_verify_location_format
fleet.first_ship_verify_location_is_on_board
fleet.first_ship_verify_horizontal_or_vertical
fleet.first_ship_verify_valid_h_or_z
