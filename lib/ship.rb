require 'pry'

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

  def calculate_deck_horizontal
    @bow = location[0].split("")
    @stern = location[1].split("")
    nums = []
    nums << @bow[1].to_i
    nums << @stern[1].to_i
    @deck = (@bow[0] + (nums.min + 1).to_s)
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

def calculate_deck_vertical
  @bow = location[0].split("")
  @stern = location[1].split("")


end
