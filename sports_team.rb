# Creating a class that represents a sports team, that takes three properties being team name (string), team players (array) and team coach (string).

class Team

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    # points variable default to 0 for every new instance.
    @points = 0
  end

# attr_reader syntax used to create getters for all variables.
  attr_reader :name, :players, :coach, :points

# coach setter method taking a string for the new coach.
  def set_coach(new_coach)
    @coach = new_coach
  end

# method to add a new player (string) to the players array.
  def add_player(new_player)
    @players << new_player
  end

# method to check whether a player is present in the players array and gives boolean (takes a string).
  def player_check(player_to_check)
    for player in @players
      return true if player_to_check == player
    end
    return false
  end

# method to increase the points variable by 3 for a win, or not get any points for a loss (takes a string "W" or "L").
  def result(outcome)
    @points += 3 if outcome == "W"
    @points += 0 if outcome == "L"
  end

end
