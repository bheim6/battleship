require 'pry'
require_relative 'communication'
require_relative 'ship'

class PlayerInput
  attr_reader :input

  def initialize
    @possible = ["A1", "A2", "A3", "A4",
                 "B1", "B2", "B3", "B4",
                 "C1", "C2", "C3", "C4",
                 "D1", "D2", "D3", "D4"]

  end

  def menu_choice
    #Use case statement here: when "q", "quit", when "i", "instructions", etc.
    puts Communication.menu
    menu_input = gets.chomp

    case menu_input
    when "q", "quit"
      game_state = "quit"
    when "i", "instructions"
      puts Communication.instructions
      PlayerInput.new.menu_choice
    when "p", "play"
      game_state = "play"
    else
      puts Communication.try_again
      PlayerInput.new.menu_choice
    end
  end

  def first_ship_placement
    puts Communication.player_place_first_ship
    input = gets.chomp.upcase.split(" ")
    two_unit_ship = Ship.new("2", input)

    while two_unit_ship.
      puts Communication.invalid_location_format
      input = gets.chomp.upcase.split(" ")
    end
    # two_unit_ship = input
  end



    # if @input.length == 2
    #   puts Communication.player_place_second_ship
    #
    #
    # end
    # binding.pry







end

interface = PlayerInput.new

interface.first_ship_placement
