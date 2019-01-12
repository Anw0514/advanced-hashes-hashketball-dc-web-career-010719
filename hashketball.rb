require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end



# Returns the number of points scored by the player
def num_points_scored(player_name)
  
  # Iterate over both team
  game_hash.each do |location,team|
    
    # Iterate over the team players
    team[:players].each do |player,stats|
      
      # If the player's name matches, return the points
      # from their stats
      if player == player_name
        return stats[:points]
      end
    end
  end
end

# Returns the shoe size of each player
def shoe_size(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player, stats|
      if player == player_name
        return stats[:shoe]
      end
    end
  end  
end

# Returns the team colors
# The return value is an array of string
def team_colors(name_of_team)
  game_hash.each do |location, team|
    if team[:team_name] == name_of_team
      return team[:colors]
    end
  end
end

# Returns an array of the team names
# The return value is an array of strings
def team_names
  arr = []
  game_hash.each do |location, team|
    arr << team[:team_name]
  end
  arr
end

# Returns the player jersey numbers
# The return value is an array of integers
def player_numbers(name_of_team)
  arr = []
  game_hash.each do |location, team|
    if team[:team_name] == name_of_team
      team[:players].each do |player, stats|
        arr << stats[:number]
      end
    end
  end
  arr
end

# Returns the stats for a given player
# The return value is a hash
def player_stats(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player, stats|
      if player == player_name
        return stats
      end
    end
  end  
end

# Returns the number of rebounds of the player with the biggest shoe size
def big_shoe_rebounds
  max_shoe_stats = nil # statistic hash
  max_shoe = nil # integer of maximum shoe size
  
  game_hash.each do |location, team|
    team[:players].each do |player_name, stats|
      if max_shoe_stats == nil || stats[:shoe] > max_shoe
         max_shoe_stats = stats
         max_shoe = stats[:shoe]
      end
    end
  end
  
  binding.pry
  return max_shoe_stats[:rebounds]
end

# BONUS QUESTIONS

# Returns the name of the player of the most points
def most_points_scored
  max_point_player = nil
  max_point = nil
  
  game_hash.each do |location, team|
    team[:players].each do |player_name, stats|
      if max_point_player == nil || stats[:points] > max_point
         max_point_player = player_name
         max_point = stats[:points]
      end
    end
  end
  
  return max_point_player
end

# Returns the team with the most points
def winning_team
  
end

# Returns the name of the player with the longest name
def player_with_longest_name
  
end

# SUPER BONUS

# Returns true if the player with the longest name had the
# most steals
def long_name_steals_a_ton?
  
end

