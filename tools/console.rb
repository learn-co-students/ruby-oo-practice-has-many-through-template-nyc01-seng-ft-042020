require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

club1 = Club.new("Chess Club")
club2 = Club.new("Math Club")
club3 = Club.new("Basketball Club")
student1 = Student.new("Josh")
student2 = Student.new("Jessica")
student3 = Student.new("Sonia")
member1 = Membership.new(club1, student3, 100)
member2 = Membership.new(club3, student2, 150)
member3 = Membership.new(club2, student1, 125)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
