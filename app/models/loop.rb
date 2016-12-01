class Loop < ApplicationRecord
  has_many :rows
  has_many :patterns, through: :rows
end
