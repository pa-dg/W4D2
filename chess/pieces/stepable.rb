module Stepable
    def moves 
        moves = []

        direction = move_diffs
        move_diffs.each do |inc|
            new_pos = [pos[0] + inc[0], pos[1] + inc[1]]
            if valid_spot?(new_pos) && in_range?(new_pos)
                moves << new_pos
            end
        end
    end

    def move_diffs
        if instance_of?(Knight)
            [[-1, 2], [1, 2], [2, 1], [2, -1], [-2, 1], [-2, -1], [-1, 2], [-1, -2]]
        else
            [[-1, 0], [1, 0], [0, -1], [0, 1], [-1, -1], [1, -1], [-1, 1], [1, 1]]
        end
    end

    def in_range?(pos)
        return new_pos[0].between?(0, 7) && new_pos[1].between(0, 7)
    end

    def valid_spot?(pos)
        return board[pos].color != @color || !board[pos]
    end
end