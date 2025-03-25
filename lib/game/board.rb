class Board
  attr_reader :board_template

  def initialize(board)
    @board = board
    @board_template = ""
  end

  def self.create_board(row_pegs = 8, column_pegs = 4)
    board = Array.new(row_pegs) { Array.new(column_pegs, " ") }
    Board.new(board)
  end


  def create_display_board_template
    line_str = @board.first.reduce("") {|acc,peg| acc + "----"}
    line_str += "----" + @board.first.reduce("") {|acc,peg| acc + "---"} + "\n"
    pegs_str = @board.first.reduce("") {|acc,peg| acc + " O "} + "     "
    peg_answers_str = @board.first.reduce("") {|acc,peg| acc + " . "} + "\n"

    board_template = @board.reduce("") { |acc, row| acc + line_str + pegs_str + peg_answers_str }
    board_template + line_str
  end

end