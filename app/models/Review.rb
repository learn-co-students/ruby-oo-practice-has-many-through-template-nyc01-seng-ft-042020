class Review
    attr_reader :ride_id
    attr_accessor :giver, :recipient, :review, :rating

    @@all = []
    
    def initialize (ride_id, recipient, giver, review, rating)
        @ride_id = ride_id
        @giver = giver
        @recipient = recipient
        @review = review
        @rating = rating
        Review.all << self
    end

    def self.all
        @@all
    end


end