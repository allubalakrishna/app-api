class Item
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  #
  #
  # def self.get_destroy
  #   debugger
  #   self.destroy_all
  # end
end
