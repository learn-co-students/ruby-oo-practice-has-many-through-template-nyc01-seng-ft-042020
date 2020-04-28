#class for Model3 goes here
#Feel free to change the name of the class
# When creating the models, be sure to include rich instance variables, so you can do more with the models!
# For instance, a `doctor` model might have things like name, field (field of study), and cost while a `patient` model might 
# have things like name, ailments and income. In doing this, you might want to write methods where a patient 
# can find the doctors (s)he can afford and/or a doctor appropriate for his/her pain.

class Customer
@@all = []

attr_reader :name, :age, :neighborhood

def initialize(name, age, neighborhood)
    @name = name
    @age = age 
    @neighborhood = neighborhood
    Customer.all << self
end

def self.all
    @@all
end

def new_purchase(item_name,cost,bodega)
    Purchase.new(item_name, cost, self, bodega)
end

def purchases
    Purchase.all.select do |purchase|
    purchase.customer == self
end
end

def purchase_names
    purchases.map do |purchase|
        purchase.item_name
    end
end

def total_purchases
    #how many purchases did -i- make? in total?
end

end