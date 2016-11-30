require('minitest/autorun')
require('minitest/rg')
require_relative('../ladder.rb')

class LadderSpec < MiniTest::Test

  def test_does_ladder_exist
    ladder = Ladder.new(3, 5)
    assert_equal(Ladder, ladder.class)
  end











end