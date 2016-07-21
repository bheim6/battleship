require 'pry'
require_relative 'player_input'
require_relative 'player_place_ships'

class Game

  def initialize
    @possible = ["A1", "A2", "A3", "A4",
                 "B1", "B2", "B3", "B4",
                 "C1", "C2", "C3", "C4",
                 "D1", "D2", "D3", "D4"]

  end

  def start
    game = "on"
    menu_input = PlayerInput.new.menu_choice
    if menu_input == "quit"
      puts Communication.quitter
      game = "over"
    elsif menu_input == "play"
    end
      until game == "over"
      two_unit_ship = PlayerPlaceShips.new.first_ship_verify_location_format

        until @possible.include?(two_unit_ship.location[0]) && @possible.include?(two_unit_ship.location[1])
          puts Communication.location_not_on_the_board
          two_unit_ship = PlayerPlaceShips.new.first_ship_verify_location_format
        end

        until two_unit_ship.horizontal? || two_unit_ship.vertical?
          puts Communication.diagonal_ship
          two_unit_ship = PlayerPlaceShips.new.first_ship_verify_location_format
        end

        until two_unit_ship.valid_horizontal? || two_unit_ship.valid_vertical?
          puts Communication.invalid_ship_size
          two_unit_ship = PlayerPlaceShips.new.first_ship_verify_location_format
        end

        second_ship_possible = (@possible - two_unit_ship.location)

        three_unit_ship = PlayerPlaceShips.new.second_ship_verify_location_format

        until @possible.include?(three_unit_ship.location[0]) && @possible.include?(three_unit_ship.location[1])
          puts Communication.location_not_on_the_board
          three_unit_ship = PlayerPlaceShips.new.second_ship_verify_location_format
        end

        until three_unit_ship.horizontal? || three_unit_ship.vertical?
          puts Communication.diagonal_ship
          three_unit_ship = PlayerPlaceShips.new.second_ship_verify_location_format
        end

        if three_unit_ship.horizontal?
          deck = three_unit_ship.calculate_deck_horizontal
        elsif three_unit_ship.vertical?
          deck = three_unit_ship.calculate_deck_vertical
        end

        until second_ship_possible.include?(three_unit_ship.location[0]) && second_ship_possible.include?(three_unit_ship.location[1]) && second_ship_possible.include?(deck)
          puts Communication.location_overlaps_first_ship
          three_unit_ship = PlayerPlaceShips.new.second_ship_verify_location_format
          if three_unit_ship.horizontal?
            deck = three_unit_ship.calculate_deck_horizontal
          elsif three_unit_ship.vertical?
            deck = three_unit_ship.calculate_deck_vertical
          end
        end
        game = "over"
      end
  end
end
