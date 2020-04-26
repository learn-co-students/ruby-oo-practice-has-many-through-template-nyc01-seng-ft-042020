#class for Model3 goes here
#Feel free to change the name of the class

require_relative "./Patient.rb"
require_relative "./Doctor.rb"


class Appointments
    attr_accessor :doctor, :patient, :date
    @@all = []

    def initialize(date, doctor, patient)
        @doctor = doctor
        @patient = patient
        @date = date
        Appointments.all << self
    end

    def self.all
        @@all
    end
  
end
