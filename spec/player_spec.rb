require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')

class PlayerSpec < MiniTest::Test

  def test_player_name
    player = Player.new("Bob", 0)
    assert_equal("Bob", player.name())
  end

  def test_player_position
    player = Player.new("Bob", 0)
    assert_equal(0, player.position())
  end

end