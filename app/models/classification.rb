class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.longest
    longest_boat = Boat.order(length: :desc).limit(1)
    longest_boat.first.classifications

  end

  def self.my_all
    Classification.all
  end
end
