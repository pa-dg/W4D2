class Queen 
    include Slideable

    private 
    
    def move_dirs 
        diagonal_dirs + horizontal_dirs
    end
end