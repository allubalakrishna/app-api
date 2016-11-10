class Sleeper
  @queue = :sleep

  def self.perform()
    Item.destroy_all
    # 10.times do |index|
    #   Item.create(name: "item #{index}")
    # end
    # sleep(seconds)
  end
end