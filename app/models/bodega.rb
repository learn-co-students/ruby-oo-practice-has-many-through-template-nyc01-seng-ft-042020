#class for Model2 goes here
#Feel free to change the name of the class
# When creating the models, be sure to include rich instance variables, so you can do more with the models!
# For instance, a `doctor` model might have things like name, field (field of study), and cost while a `patient` model might 
# have things like name, ailments and income. In doing this, you might want to write methods where a patient 
# can find the doctors (s)he can afford and/or a doctor appropriate for his/her pain.

class Bodega
@@all = []
attr_reader :name, :cat_name

    def initialize(name, cat_name)
    @name = name
    @cat_name = "#{cat_name} the cat"
    Bodega.all << self
    end

    def self.all
        @@all
    end

    def self.all_bodega_cats
        self.all.select do |bodega|
            bodega.cat_name
        end
    end

    def purchases
        Purchase.all.select do |purchase|
            purchase.bodega == self
        end
    end

    def self.most_purchases
   
    end
    
    # def self.most_prolific
    #     self.all.max_by do |artist|
    #       artist.paintings.length / artist.years_experience
    #     end
    #   end 


end
