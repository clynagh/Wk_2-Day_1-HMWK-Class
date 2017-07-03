class SportsTeam

 attr_reader :team_name, :players
 attr_accessor :coach

def initialize (team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

def update_coach(coach)
  @coach = coach
end

def add_player(player)
  @players << player
    # @players.push(player)
end

def check_player(player)
  @players.include?(player)
end

def win_game(status, points)
  status == "win" ? @points += points : @points
end

 # def get_team_name
  #   @team_name
  # end

 # def get_players
  #   @players
  # end

 # def get_coach
  #   @coach
  # end

 # def set_coach(coach)
  #   @coach = coach
  # end

end