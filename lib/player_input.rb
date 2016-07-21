require 'pry'
require_relative 'communication'
require_relative 'ship'

class PlayerInput

  def menu_choice
    puts Communication.menu
    menu_input = gets.chomp
      case menu_input
      when "q", "quit"
        "quit"
      when "i", "instructions"
        puts Communication.instructions
        PlayerInput.new.menu_choice
      when "p", "play"
        "play"
      else
        puts Communication.try_again
        PlayerInput.new.menu_choice
      end
  end

end
