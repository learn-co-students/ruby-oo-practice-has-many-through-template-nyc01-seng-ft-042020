class Review
    attr_reader :author, :recipient, :review
    @@all = []

    def initialize (author, recipient, review)
        @author = author
        @recipient = recipient
        @review = review

        Review.all << self
    end

    def self.all
        @@all 
    end

end