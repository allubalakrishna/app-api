class Movie
  include Mongoid::Document
  field :name, type: String

  has_many :purchases
  has_many :buyers, through: :purchases
end