require 'SimpleCov'
SimpleCov.start

gem 'minitest'
require './lib/board'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BoardTest < Minitest::Test

  def test_new_board_has_all_blank_spaces
    skip
    board = Board.new
    board.cells.values.each {|cell_value| assert_equal " ", cell_value}
  end

  def test_it_can_print_header_and_footer
    board = Board.new
    output =  "===========\n . 1 2 3 4\n A        \n B        \n C        \n D        \n ===========\n"
    assert_equal output, board.print_board
  end
end
