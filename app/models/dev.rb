class Dev < ActiveRecord::Base
  has_many :freebies, dependent: :destroy
  has_many :companies, through: :freebies

  # returns true if any of the freebies associated with the dev has the item_name, otherwise returns false
  def received_one? item_name
    self.freebies.any? {|freebie| freebie.item_name == item_name}
  end

  # accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev
  def give_away dev, freebie
    freebie.update(dev: dev)
  end

end
