require 'pry'
require_relative 'communication'

class Ship
  attr_reader :length, :location

  def initialize(length, location)
    @length = length
    @location = location
  end

  def valid_length?
    if length == "2" || length == "3"
      true
    else
      false
    end
  end

  def valid_location?


  end






end
