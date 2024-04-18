class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: { message: "can't be blank" }
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200, message: "has to be between 40 and 200" }
end
