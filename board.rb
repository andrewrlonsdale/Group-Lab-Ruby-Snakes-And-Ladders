class Board

  attr_reader :board_size

  def initialize(board_size)
    @board_size = board_size
    @ladder_array = []
    @snake_array = []
    
  end

  def number_of_ladders()
    return @ladder_array.count
  end

  def add_ladder(ladder1)
    @ladder_array << ladder1
  end

  def number_of_snakes()
    return @snake_array.count
  end

  def add_snake(snake1)
    @snake_array << snake1
  end

end