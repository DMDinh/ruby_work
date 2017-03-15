class Post < ApplicationRecord
  belongs_to :blog
  has_many :messages
  # validates :content, presence: true,
  # validates :title, length: {in:7..100},
end
