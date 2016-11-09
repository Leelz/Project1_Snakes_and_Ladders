require('minitest/autorun')
require('minitest/rg')
require_relative('Player')

class TestPerson < Minitest::Test

def setup
@player = Players.new("Putin")
end

  def test_player_name
    assert_equal("Putin", @player.name)
  end

  # def test_starting_position
  #   assert_equal(0, @player.starting_position)
  # end

  def test_current_position
    assert_equal(0, @player.current_position)
  end

  def test_mov_player
    # # dice = @player.roll()
    # @player.mov_player( dice )
    @player.mov_player( 3 )
    assert_equal(3, @player.current_position )
  end


end