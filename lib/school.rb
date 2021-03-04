# code here!
class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student,grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end 
    
    def grade(grade)
        @roster[grade]
    end 

    def sort
        sorts = {}
        roster.each do |grade, students|
            sorts[grade] = students.sort
        end 
        sorts
    end 
end 