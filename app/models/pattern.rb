class Pattern < ApplicationRecord
  has_many :rows
  has_many :loops, through: :rows
end
