require_relative 'player'
require_relative 'board'
require_relative 'question'
require_relative 'display'
require_relative 'turn'

class Game
  def initialize(board, players)
    @board = board
    @players = players
  end
end