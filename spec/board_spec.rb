require('minitest/autorun')
require('minitest/rg')
require_relative('../board.rb')
require_relative('../ladder.rb')
require_relative('../snake.rb')

class BoardSpec < MiniTest::Test



# board size
# call snakes and ladders
# winning cell
# start cell
#start cell will always be 1
#winning cell will always be board size

def test_board_exist
  board = Board.new(7)
  assert_equal(Board, board.class)
end

def test_size_of_board
  board = Board.new(7)
  assert_equal(7, board.board_size)
end

def test_number_of_ladders
  board = Board.new(7)
  ladder = Ladder.new(3, 5)
  assert_equal(0, board.number_of_ladders)
end

def test_add_ladder
  board = Board.new(7)
  ladder1 = Ladder.new(3, 5)
  board.add_ladder(ladder1)
  assert_equal(1, board.number_of_ladders)
end

def test_number_of_snakes
  board = Board.new(7)
  ladder = Ladder.new(6, 2)
  assert_equal(0, board.number_of_snakes)
end

def test_add_snake
  board = Board.new(7)
  snake1 = Snake.new(6, 2)
  board.add_snake(snake1)
  assert_equal(1, board.number_of_snakes)
end



end