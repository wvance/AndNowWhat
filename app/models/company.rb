class Company < ActiveRecord::Base
  has_many :opportunities

  # MAKE SURE COMPANY NAME IS UNIQUE
  validates :name, uniqueness: true
end
