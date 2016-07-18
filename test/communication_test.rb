require 'SimpleCov'
SimpleCov.start

gem 'minitest'
require './lib/communication'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CommunicationTest < Minitest::Test

  def test_it_can_welcome_player
    interface = Interface.new
    assert_equal "      Welcome to :*:~~ BATTLESHIP ~~:*:", interface.welcome
  end

  def test_it_can_show_the_menu
    interface = Interface.new
    assert_equal "      Would you like to (p)lay, read the (i)nstructions, or (q)uit?", interface.menu
  end

  def test_it_can_display_instructions
    interface = Interface.new
    assert_equal "      BATTLESHIP Instructions:
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
      Good Luck sailor! ", interface.instructions
    end

end
