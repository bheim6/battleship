require 'pry'
# require_relative 'communication'

class Ship
  attr_reader :size, :location

  def initialize(size, location)
    @size = size
    @location = location
  end

  def valid_size?
    if size == "2" || size == "3"
      true
    else
      false
    end
  end

  def valid_location_format?
    if location.length == 2
      true
    else
      false
    end
  end

  def horizontal?
    bow = ship.location[0]
    stern = ship.location[1]

  end


end

new_ship = Ship.new("3", ["A1", "A3"])
new_ship.horizontal?
binding.pry
