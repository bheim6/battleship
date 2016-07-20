require 'pry'
# require_relative 'communication'

class Ship
  attr_reader :size, :location

  def initialize(size, location)
    @size = size
    @location = location
    # @possible = ["A1", "A2", "A3", "A4",
    #              "B1", "B2", "B3", "B4",
    #              "C1", "C2", "C3", "C4",
    #              "D1", "D2", "D3", "D4"]


  end

  # def bow_and_stern
  #   @bow = location[0].split("")
  #   @stern = location[1].split("")
  # end

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

  # def valid_location?
  #   if @possible.include?(location[0] && location[1])
  #     true
  #   else
  #     false
  #   end
  # end

  def horizontal?
    @bow = location[0].split("")
    @stern = location[1].split("")
    if @bow[0] == @stern[0]
      true
    else
      false
    end
  end

  def valid_horizontal?
    @bow = location[0].split("")
    @stern = location[1].split("")
    width = (@bow[1].to_i - @stern[1].to_i)
     if width.abs == (size.to_i - 1)
       true
     else
       false
     end
  end

  def vertical?
    @bow = location[0].split("")
    @stern = location[1].split("")
    if @bow[1] == @stern[1]
      true
    else
      false
    end
  end

  def valid_vertical?
    @bow = location[0].split("")
    @stern = location[1].split("")
    width = (@bow[0].ord - @stern[0].ord)
     if width.abs == (size.to_i - 1)
       true
     else
       false
     end
  end




end

# new_ship = Ship.new("3", ["A1", "A3"])
# new_ship.horizontal?
# binding.pry
