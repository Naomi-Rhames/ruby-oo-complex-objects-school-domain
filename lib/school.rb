require "pry"
class School
   attr_reader :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name,grade)
        if roster[grade] 
            roster[grade].push(name)
        else 
            new_arr = [name]
            roster[grade] = new_arr 
        end
    end
    def grade(i)
        roster[i]
    end
    def sort
        sorter = {}
        roster.each do |grade, student|
            sorter[grade] = student.sort 
        end
        sorter
    end
end