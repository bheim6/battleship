require 'SimpleCov'
SimpleCov.start

gem 'minitest'
require './lib/battleship'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BattleshipTest < Minitest::Test

  def test_it_can_play
    battleship = Battleship.new

    assert_respond_to battleship , :play
  end
end
