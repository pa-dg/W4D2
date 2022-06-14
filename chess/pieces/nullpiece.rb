require_relative "./pieces/piece.rb"

class NullPiece < Piece
  include Singleton

  def initialize
  end
  
  def symbol 
    @symbol
  end

  def moves 
    @moves
  end
end
