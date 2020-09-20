class Game < ApplicationRecord
    has_many :appearances
    has_many :trainers, through: :appearances
end
