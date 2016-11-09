class Game 

  def initialize(play_turn)
    @play_turn = play_turn
    @player_list = []
  end

  def player_count
    return @player_list.count
  end

  def add_player(player)
    @player_list << player
  end

  def add_players( players )
    for player in players 
      add_player(player)
    end
  end

  def mov_player( number )
    @current_position += number
  end

  def continue_playing ()
    for player in @player_list
      if player.current_position <= 9
        player.mov_player( player.roll() )
      else
        return "Well done #{@player.name} you've won!"

      end
    end
  end

  def snake()
    if @player.current_position == 6
      @player.current_position -= 3
    end
  end

  # def ladder()
  #   if @player.current_position = 6
  #     @player.current_position += 3
  #   end
  # end

end