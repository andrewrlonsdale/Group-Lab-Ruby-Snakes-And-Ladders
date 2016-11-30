require('minitest/autorun')
require('minitest/rg')
require_relative('../game.rb')
require_relative('../player.rb')
require_relative('../dice.rb')

class GameSpec < MiniTest::Test


  def test_can_create_game
    game = Game.new
    assert_equal(Game, game.class)
  end

  def test_game_has_no_players
    game = Game.new
    assert_equal(0, game.number_of_players)
  end

  def test_add_players
    game = Game.new
    player = Player.new("Ben",0)

    game.add_player(player)
    assert_equal(1, game.number_of_players)

  end

  def test_change_players
    game = Game.new
    player1 = Player.new("Ben",0)
    player2 = Player.new("Andrew",0)

    game.add_player(player1)
    game.add_player(player2)

    assert_equal([player2,player1], game.change_player(@player_array))

  end

  def test_player_can_roll
    game = Game.new
    roll1 = Dice.new()
    assert_equal(2, game.roll_dice)
  end

end