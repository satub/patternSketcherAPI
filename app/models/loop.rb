class Loop < ApplicationRecord
  has_many :stitches
  has_many :patterns, through: :stitches
end
