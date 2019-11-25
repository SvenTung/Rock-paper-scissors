class Rps

  def self.play(player1, player2)
    case player1
      when "rock"
        case player2
          when "rock"
            return "Draw"
          when "paper"
            return "Player 2 wins"
          when "scissors"
            return "Player 1 wins"
        end
      when "paper"
        case player2
          when "rock"
            return "Player 1 wins"
          when "paper"
            return "Draw"
          when "scissors"
            return "Player 2 wins"
        end
      when "scissors"
        case player2
          when "rock"
            return "Player 2 wins"
          when "paper"
            return "Player 1 wins"
          when "scissors"
            return "Draw"
        end
    end
  end

  def self.random
    choice = ["rock", "paper", "scissors"]
    return choice[rand(0...3)]
  end

  def self.translate(choice)
    case choice
      when "9467812"
        return "rock"
      when "1063289"
        return "paper"
      when "4738926"
        return "scissors"
    end
  end

end
