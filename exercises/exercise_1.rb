require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true,  numericality: { greater_than_or_equal_to: 0 }
  validate :mens_or_womens_clothing?
  has_many :employees
  scope :over_million, -> { where("annual_revenue > ?", 1000000) }

  private
  def mens_or_womens_clothing?
    if !self.mens_apparel && !self.womens_apparel
      errors.add(:mens_apparel, "Must carry mens or womens apparel")
    end
  end
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  belongs_to :store
end

burnaby = Store.create name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true
richmond = Store.create name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true
gastown = Store.create name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false

puts Store.count
