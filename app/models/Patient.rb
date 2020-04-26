#class for Model2 goes here
#Feel free to change the name of the class
require 'pry'

class Patient

    attr_accessor :name, :income, :medical_history

    def initialize(name, income)
        @name = name
        @income = income
        @medical_history = []
    end

    def add_medical_history=(issue)
        @medical_history << issue
    end

    def get_medical_history
        @medical_history.flatten
    end


end
