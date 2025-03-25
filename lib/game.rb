require_relative 'game/player'
require_relative 'game/board'
require_relative 'game/question'
require_relative 'game/turn'

class Game
  def initialize(board, players)
    @board = board
    @players = players
  end
end