require('minitest/autorun')
require('minitest/rg')
require_relative('../snake.rb')

class SnakeSpec < MiniTest::Test

  def test_does_snake_exist
    snake = Snake.new(6, 4)
    assert_equal(Snake, snake.class)
  end











end