class Gnome < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, length: { minimum: 15 }, presence: true
end
