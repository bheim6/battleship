require 'pry'

class Board
  attr_reader :cells

  def initialize
    @cells = {"A1" => " ", "A2" => " ", "A3" => " ",
              "A4" => " ",

              "B1" => " ", "B2" => " ", "B3" => " ",
              "B4" => " ",

              "C1" => " ", "C2" => " ", "C3" => " ",
              "C4" => " ",

              "D1" => " ", "D2" => " ", "D3" => " ",
              "D4" => " "}

    @game_board = [["A1", "A2", "A3", "A4"],
                   ["B1", "B2", "B3", "B4"],
                   ["C1", "C2", "C3", "C4"],
                   ["D1", "D2", "D3", "D4"]]

    @rows = ["A", "B", "C", "D"]
    @columns = ["1", "2", "3", "4"]
  end

  def print_board
    #building string with dynamic input
    #Defining header as first item in "board_display" string
    board_display = " ===========\n . 1 2 3 4\n"
    #Picking out game_board "cells" using index (because they are arrays)
    @game_board.each_with_index do |row, index|
      #Display capital letter for each row by taking the index of @rows
      board_display << " "
      board_display << @rows[index]
      board_display << " "
      #enumerate through @cells to get the value of each key
      row.each do |cell|
        board_display << @cells[cell]
        board_display << " "
      end
      #Add new line after each row
      board_display << "\n"
    end
    #Shovel footer into display
    board_display << " ===========\n"
    board_display
  end





end

# board = Board.new
# puts board.print_board
