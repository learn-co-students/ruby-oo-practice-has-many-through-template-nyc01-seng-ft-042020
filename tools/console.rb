require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

d1 = Doctor.new("Matt", "Child", 100)

p1 = Patient.new("Kieth", "pain", 100)

a1 = Appointment.new("4 pm", 01/10/2020, d1, p1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
