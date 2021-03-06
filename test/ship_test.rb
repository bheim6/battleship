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

  def test_it_can_be_horizontal
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.horizontal?
  end

  def test_it_returns_false_if_not_horizontal
    ship = Ship.new("2", ["A1", "B1"])
    refute ship.horizontal?
  end

  def test_it_can_be_vertical
    ship = Ship.new("2", ["A1", "B1"])
    assert ship.vertical?
  end

  def test_it_returns_false_if_not_vertical
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.horizontal?
  end

  def test_it_is_a_valid_horizontal_ship
    ship = Ship.new("3", ["A1", "A3"])
    assert ship.valid_horizontal?

    ship = Ship.new("2", ["A2", "A3"])
    assert ship.valid_horizontal?

    ship = Ship.new("3", ["A1", "A2"])
    refute ship.valid_horizontal?

    ship = Ship.new("2", ["A1", "A3"])
    refute ship.valid_horizontal?
  end

  def test_it_is_a_valid_vertical_ship
    ship = Ship.new("2", ["A1", "B1"])
    assert ship.valid_vertical?

    ship = Ship.new("3", ["A1", "C1"])
    assert ship.valid_vertical?

    ship = Ship.new("2", ["A1", "C1"])
    refute ship.valid_vertical?

    ship = Ship.new("2", ["B1", "D1"])
    refute ship.valid_vertical?
  end

  def test_three_unit_ships_fill_in_missing_coordinate_horizontal
    ship = Ship.new("3", ["A1", "A3"])
    assert_equal "A2", ship.calculate_deck_horizontal

    ship = Ship.new("3", ["B4", "B2"])
    assert_equal "B3", ship.calculate_deck_horizontal
  end

  def test_three_unit_ships_fill_in_missing_coordinate_vertical
    ship = Ship.new("3", ["A1", "C1"])
    assert_equal "B1", ship.calculate_deck_vertical

    ship = Ship.new("3", ["B3", "D3"])
    assert_equal "C3", ship.calculate_deck_vertical
  end
end
