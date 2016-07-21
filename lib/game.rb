require 'pry'
require_relative 'player_input'
require_relative 'player_place_ships'

class Game

  def start
    @menu_input = PlayerInput.new.menu_choice
    if @menu_input == "quit"
      puts Communication.quitter
    elsif @menu_input == "play"
      fleet = PlayerPlaceShips.new
      fleet.first_ship_verify_location_format
      fleet.first_ship_verify_location_is_on_board
      fleet.first_ship_verify_horizontal_or_vertical
      fleet.first_ship_verify_valid_h_or_z
      fleet.second_ship_verify_location_format
      fleet.second_ship_verify_location_is_on_board
      fleet.second_ship_verify_horizontal_or_vertical
      fleet.second_ship_verify_valid_h_or_z
      fleet.second_ship_verify_no_overlap
    end
  end
end
