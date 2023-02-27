class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    
    def reviews
      Review.where(user_id: self.id)
    end
    
    def favorite_product
      products.max_by { |product| product.average_rating }
    end
  end