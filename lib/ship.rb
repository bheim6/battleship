require 'pry'
# require_relative 'communication'

class Ship
  attr_reader :size, :location

  def initialize(size, location)
    @size = size
    @location = location
    @bow = location[0].split("")
    @stern = location[1].split("")
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
    if @bow[0] == @stern[0]
      true
    else
      false
    end
  end

  def vertical?
    if @bow[1] == @stern[1]
      true
    else
      false
    end
  end


end

# new_ship = Ship.new("3", ["A1", "A3"])
# new_ship.horizontal?
# binding.pry
