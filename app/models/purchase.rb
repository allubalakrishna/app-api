class Purchase
  include Mongoid::Document
  field :movie_id, type: Integer
  field :buyer_id, type: Integer

  belongs_to :movie
  belongs_to :buyer, class_name: 'User'
end