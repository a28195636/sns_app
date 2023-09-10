class Topic < ApplicationRecord
  validates :title, presence: true
  validates :body, length: { maximum: 140 }

end
