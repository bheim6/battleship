require 'SimpleCov'
SimpleCov.start

gem 'minitest'
require './lib/player_input'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerInputTest < Minitest::Test

  # def test_it_can_make_decisions_in_menu
  #
  #   Communication.menu
  #   player_input = PlayerInput.new
  #   assert_equal "p", player_input.menu
  # end


end
