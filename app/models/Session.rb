#class for Model3 goes here
#Feel free to change the name of the class
class Session
    attr_accessor :tutor, :student
    
    @@all = []
  
    def initialize(tutor, student)
      @tutor = turor
      @student = student
      Session.all << self
    end
  
    def self.all
      @@all
    end
  
  end