class Pattern < ApplicationRecord
  has_many :stitches
  has_many :loops, through: :stitches
end
