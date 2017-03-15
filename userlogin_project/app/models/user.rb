class User < ApplicationRecord

  validates :first_name, :last_name, :email, presence: true, length: {in: 3..20}
  validates :age, numericality: {greater_than_or_equal_to: 10, less_than: 150}

end
