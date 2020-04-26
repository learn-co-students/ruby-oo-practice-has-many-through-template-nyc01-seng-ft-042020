#class for Model1 goes here
#Feel free to change the name of the class

require_relative "./Patient.rb"
require_relative "./Appointment.rb"

class Doctor

    specialty = {
                :general_medicine => ["physical", "cold", "allergies"], 
                :dentist => ["tooth_ache", "cleaning", "filling"], 
                :oncology => ["chemotherapy", "biopsy"]
                }

    def intialize(name)
        @name = name
        @specialty = specialty[specialty.keys.sample]
    end

    def patients
        Appointments.all.select {|apt| apt.doctor == self}
    end

end
