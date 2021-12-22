class List < ApplicationRecord
  belongs_to :user
  has_many :wishes

  validates :title, presence: true
end
