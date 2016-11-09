require('minitest/autorun')
require('minitest/rg')
require_relative('Game')
require_relative('Board')
require_relative('Player')

class TestPerson < Minitest::Test

  def setup
    @player = Players.new("Putin", 3) 
    @player1 = Players.new("Trump", 3)
    @Game = Game.new(0)
  end

  # def test_player_name
  #   assert_equal("Putin", @player1.name)
  # end

  def test_can_add_player
    dude = @player
    @Game.add_player(dude)
    assert_equal(1, @Game.player_count)
  end

  def test_can_add_players
    dudes = [@player, @player1]
    @Game.add_players(dudes)
    assert_equal(2, @Game.player_count)
  end

  # def test_mov_player
  #   @player.mov_player( 3 )
  #   assert_equal(3, @player.current_position )
  # end

  def test_continue_playing
    dudes = [@player, @player1]
    @Game.add_players(dudes)
    2.times do @Game.continue_playing
    end
      assert_equal(6, @player.current_position)
    
  end

  def  test_snake
    dudes = [@player, @player1]
    @Game.add_players(dudes)
    2.times do @Game.continue_playing
    end
   assert_equal(3, @player.current_position)
  end

end
