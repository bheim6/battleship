require 'SimpleCov'
SimpleCov.start

gem 'minitest'
require './lib/ship'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ShipTest < Minitest::Test

  def test_it_has_a_size
    ship = Ship.new("3", ["A1", "A3"])
    assert_equal "3", ship.size
  end

  def test_it_has_a_location
    ship = Ship.new("3", ["A1", "A3"])
    assert_equal ["A1", "A3"], ship.location
  end

  def test_it_has_a_valid_size
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.valid_size?
  end

  def test_it_has_an_invalid_size
    ship = Ship.new("4", ["A1", "A3"])
    refute ship.valid_size?
  end

  def test_it_has_a_valid_location_format
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.valid_location_format?
  end

  def test_it_has_an_invalid_location_format
    ship = Ship.new("3", ["A1", "A2", "A3"])
    refute ship.valid_location_format?
  end

  def test_it_is_horizo
    skip
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.horizontal?
  end













end
