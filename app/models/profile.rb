class Profile < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :user

  validates :name, presence: true
end
