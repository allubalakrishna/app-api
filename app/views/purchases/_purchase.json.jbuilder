json.extract! purchase, :id, :movie_id, :buyer_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)