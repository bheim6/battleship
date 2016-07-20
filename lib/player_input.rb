require 'pry'
require_relative 'communication'

class PlayerInput
  attr_reader :input

  def menu
    puts Communication.menu
    @input = gets.chomp
  end

  def menu_choice
    #Use case statement here: when "q", "quit", when "i", "instructions", etc.
    if input == "q"
      game_state = "quit"
    elsif input == "i"
      puts Communication.instructions
      PlayerInput.new.menu
    elsif input == "p"
      game_state = "play"
    end
  end

end

interface = PlayerInput.new
interface.menu
interface.menu_choice
