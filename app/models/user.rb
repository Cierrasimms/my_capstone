class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :pokemon_teams
  has_many :teams, through: :pokemon_teams
end
