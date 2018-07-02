class Team

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  attr_reader :name, :players, :coach, :points

  def set_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def player_check(player_to_check)
    for player in @players
      return true if player_to_check == player
    end
    return false
  end

  def result(outcome)
    @points += 3 if outcome == "W"
    @points += 0 if outcome == "L"
  end

end
