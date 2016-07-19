require 'SimpleCov'
SimpleCov.start

gem 'minitest'
require './lib/ship'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ShipTest < Minitest::Test

  def test_it_has_a_length
    ship = Ship.new("3", ["A1", "A3"])
    assert_equal "3", ship.length
  end

  def test_it_has_a_location
    ship = Ship.new("3", ["A1", "A3"])
    assert_equal ["A1", "A3"], ship.location
  end

  def test_it_has_a_valid_length
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.valid_length?
  end

  def test_it_has_an_invalid_length
    ship = Ship.new("4", ["A1", "A3"])
    refute ship.valid_length?
  end

  def test_it_has_a_valid_location
    

  end



end
