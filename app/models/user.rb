class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
      self.reviews.order(star_rating: :desc).first.product
  end

  def remove_reviews(product)
    product.reviews.delete_all
end
  end