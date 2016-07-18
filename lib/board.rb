require 'pry'

class Board
  attr_reader :cells

  def initialize
    @cells = {"A1" => ".", "A2" => ".", "A3" => ".",
              "A4" => ".",

              "B1" => ".", "B2" => ".", "B3" => ".",
              "B4" => ".",

              "C1" => ".", "C2" => ".", "C3" => ".",
              "C4" => ".",

              "D1" => ".", "D2" => ".", "D3" => ".",
              "D4" => "."}

    @game_board = [["A1", "A2", "A3", "A4"],
                   ["B1", "B2", "B3", "B4"],
                   ["C1", "C2", "C3", "C4"],
                   ["D1", "D2", "D3", "D4"]]

    @rows = ["A", "B", "C", "D"]
    @columns = ["1", "2", "3", "4"]
  end

  def print_board
    #building string with dynamic input
    board_display = " ===========\n . 1 2 3 4\n"
    @game_board.each_with_index do |row, index|
      board_display << " "
      board_display << @rows[index]
      board_display << " "
      row.each do |cell|
        board_display << @cells[cell]
        board_display << " "
      end
      board_display << "\n"
    end
    board_display << " ===========\n"
    # binding.pry
    board_display
  end

end

board = Board.new
puts board.print_board
