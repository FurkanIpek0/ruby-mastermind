class Player
  attr_reader :name, :type, :score
  
  def initialize(name,type, score)
    @name = name
    @type = type
    @score = score
  end

  def self.create_player(name, type, score = 0)
    Player.new(name, type, score)
  end
end