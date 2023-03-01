class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def leave_review(user,star_rating,comment)
        
    end

    def print_all_reviews
        self.reviews.map do |review|
            review.print_review
        end
    end

    def average_rating
        self.reviews.average(:star_rating).to_f
    end
  

  end