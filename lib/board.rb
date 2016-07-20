require 'pry'

class Board
  attr_reader :cells, :game_board, :rows, :columns

  def initialize
    @cells = {}
    @game_board = [["A1", "A2", "A3", "A4"],
                   ["B1", "B2", "B3", "B4"],
                   ["C1", "C2", "C3", "C4"],
                   ["D1", "D2", "D3", "D4"]]
    @rows = %w{A B C D}
    @columns = %w{1 2 3 4}
    game_board.each do |row|
      row.each do |space|
        cells[space] = " "
      end
    end
  end

  def print_board
    #building string with dynamic input
    #Defining header as first item in "board_display" string
    board_display = " ===========\n . 1 2 3 4\n"
    #Picking out game_board "cells" using index (because they are arrays)
    game_board.each_with_index do |row, index|
      #Display capital letter for each row by taking the index of @rows
      board_display << " #{rows[index]} "
      #enumerate through @cells to get the value of each key
        row.each do |cell|
          board_display << "#{cells[cell]} "
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
