#class for Model1 goes here
#Feel free to change the name of the class
class Club

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def students
        Membership.all.select do |student|
        student.club == self
        end.map do |list|
        list.student.name
        end
    end


end




# list all clubs
# list all students associated with a specific club
# list all costs of that students list of specific clubs
# join a new club