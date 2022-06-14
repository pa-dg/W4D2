require_relative 'piece.rb'

class Board 

    attr_reader :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) } 
        setup
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @grid[row][col] = value
    end

    def setup
        (0...2).each do |i|
            (0...8).each do |j|
                pos = [i, j]
                self[pos] = Piece.new #grid[i, j]
            end
        end

        (6...8).each do |i|
            (0...8).each do |j|
                pos = [i, j]
                self[pos] = Piece.new
            end
        end
    end

    def print 
        @grid.each {|row| p row}
    end

    def move_piece(start_pos, end_pos)
        raise "there is nothing there at your start position requested" if !@grid[start_pos] 
        raise "there is a piece already there at your end position requested" if @grid[end_pos]
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end

end 