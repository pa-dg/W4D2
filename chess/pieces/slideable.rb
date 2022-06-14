module Slideable

    HORIZONTAL_DIRS = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    DIAGONAL_DIRS = [[-1, -1], [1, -1], [-1, 1], [1, 1]]

    def horizontal_dirs 
        
    end

    def diagonal_dirs 

    end

    def moves
        moves = []
        direction = move_dirs
        move_dirs.each do |inc|
            x, y = pos
            if board[]
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
end