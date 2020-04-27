require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

p1 = Person.new("Jack")
p2 = Person.new("Jill")
p3 = Person.new("Josh")
mag1 = Magazine.new("Times")
mag2 = Magazine.new("Vogue")
mag3 = Magazine.new("Vanity Fair")
sub1 = Subscription.new(p1, mag1, 100)
sub2 = Subscription.new(p3, mag2, 50)
sub3 = Subscription.new(p3, mag3, 150)
sub4 = Subscription.new(p2, mag2, 50)
sub5 = Subscription.new(p3, mag1, 100)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
