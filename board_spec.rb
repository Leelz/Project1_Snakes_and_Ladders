require('minitest/autorun')
require('minitest/rg')
require_relative('Board')

class TestDragon < Minitest::Test
  
  def setup
    @first_game = Board.new()
  end

  def test_board()
    assert_equal(9, @first_game.number_of_cells)
  end
  
end