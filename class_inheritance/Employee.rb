class Employee

    
    def initialize(name, title, salary, manager = nil)
        @name, @title, @salary, @manager = name, title, salary, manager
        add_employee
    end

    def add_employee
        unless !@manager
            @manager.all_employees << self 
            if @manager.manager 
                @manager.manager.all_employees << self
            end 
        end
    end

    
    def bonus(multiplier)
        self.salary * multiplier
    end

    def inspect
        { 'name' => @name, 'manager' => @manager }.inspect
    end

    protected
        attr_reader :salary, :name, :manager
    
end

class Manager < Employee
    attr_accessor :all_employees
    
    def initialize(name, title, salary, manager = nil)
         @all_employees = [] #contains instance of employees
        super
    end

    def bonus(multiplier)
        total = 0

        @all_employees.each { |employee| total += employee.salary }

        return total * multiplier
    end

    def inspect
        { 'all_employees' => @all_employees}.inspect
    end
    
end


ned = Manager.new("Ned", "founder", 1000000)
darren = Manager.new("Darren", "TA Man", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)