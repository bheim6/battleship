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
    when "q", "quit"
      game_state = "quit"
    when "i", "instructions"
      puts Communication.instructions
      PlayerInput.new.menu
    when "p", "play"
      game_state = "play"
    else
      puts Communication.try_again
      PlayerInput.new.menu
    end
  end

end

interface = PlayerInput.new
interface.menu
interface.menu_choice
