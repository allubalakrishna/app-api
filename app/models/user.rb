class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String

  has_many :purchases, foreign_key: :buyer_id
  has_many :movies, through: :purchases

  def cart_total_price
    total_price = 0
    get_cart_movies.each { |movie| total_price+= movie.price }
    total_price
  end

  def get_cart_movies
    cart_ids = $redis.smembers "cart#{id}"
    Movie.find(cart_ids)
  end
end