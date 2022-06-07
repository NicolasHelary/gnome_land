class Gnome < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, length: { minimum: 15 }, presence: true
end
