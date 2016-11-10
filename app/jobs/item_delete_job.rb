class ItemDeleteJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Item.destroy_all
    10.times do |index|
      Item.create(name: "item #{index}")
    end
    # Do something later

  end
end