class Company < ActiveRecord::Base
  has_many :freebies, dependent: :destroy
  has_many :devs, through: :freebies

  # returns a new freebie instance with this company and the givin dev
  def give_freebie dev, item_name, value
    Freebie.create(dev: dev, item_name: item_name, value: value, company: self)
  end

  # returns the company instance with the earliest founding year
  def self.oldest_company
    self.all.order(:founding_year).first
  end


end
