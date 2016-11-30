class Game

  attr_accessor  :current_player

  def initialize()
    @player_array = []
    #@current_player = current_player
  end

  def number_of_players
    return @player_array.count
  end

  def add_player(player)
    @player_array << player
  end

  def change_player(player_array)
    @player_array.rotate!
  end

end