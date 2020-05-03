#class for Model3 goes here
#Feel free to change the name of the class
class Appointment
    attr_accessor :doctor, :patient, :time, :date
    @@all = []
   def initialize(time, date, doctor, patient)
       @doctor = doctor
       @@patient = patient
       Appointment.all << self
   end

   def self.all
       @@all
   end
end
