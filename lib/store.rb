class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: "has to be longer than 3 characters" }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, message: "can't be blank" }
  validate :must_carry_apparel 

  def must_carry_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:base, "Store has to be selling at least one type of apparel")
    end
  end
end
