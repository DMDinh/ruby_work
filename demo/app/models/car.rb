class Car < ApplicationRecord
  belongs_to :user

  validates :color, :model, :vin, presence: true

  before_save do
    self.color = "Red"
  end


end
