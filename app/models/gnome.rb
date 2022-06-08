class Gnome < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, presence: true
  validates :description, length: { minimum: 15 }, presence: true
end
