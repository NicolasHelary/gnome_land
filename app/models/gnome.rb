class Gnome < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :description, length: { minimum: 6 }, presence: true
end
