#class for Model1 goes here
#Feel free to change the name of the class
# When creating the models, be sure to include rich instance variables, so you can do more with the models!
# For instance, a `doctor` model might have things like name, field (field of study), and cost while a `patient` model might 
# have things like name, ailments and income. In doing this, you might want to write methods where a patient 
# can find the doctors (s)he can afford and/or a doctor appropriate for his/her pain.

class Purchase

attr_reader :item_name, :customer, :bodega
attr_accessor :cost

@@all = []
def initialize(item_name,cost,customer,bodega)
    @item_name = item_name
    @cost = cost 
    @customer = customer 
    @bodega = bodega 
    Purchase.all << self
end

def self.all
    @@all
end


end


