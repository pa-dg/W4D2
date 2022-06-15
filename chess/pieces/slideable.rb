module Slideable

    HORIZONTAL_DIRS = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    DIAGONAL_DIRS = [[-1, -1], [1, -1], [-1, 1], [1, 1]]

    def horizontal_dirs 
        return HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        return DIAGONAL_DIRS
    end

    def moves
        moves = []
        moves += grow_unblocked_moves_in_dir(pos)
        return moves     
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        unblocked_moves = []
        directions = move_dirs 
        move_dirs.each do |inc|
            new_pos = pos.dup
            while valid_spot?(new_pos) && in_range?(new_pos)
                unblocked_moves << new_pos
                new_pos = [new_pos[0] + inc[0], new_pos[1] + inc[1]]
            end
        end
    end

    private 

    def move_dirs
        if instance_of?(Bishop)
            return DIAGONAL_DIRS
        elsif instance_of?(Rook)
            return HORIZONTAL_DIRS
        else
            return HORIZONTAL_DIRS + DIAGONAL_DIRS
        end
    end

    def in_range?(pos)
        return new_pos[0].between?(0, 7) && new_pos[1].between(0, 7)
    end

    def valid_spot?(pos)
        return board[pos].color != @color || !board[pos]
    end
end