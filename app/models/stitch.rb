class Stitch < ApplicationRecord
  belongs_to :pattern
  belongs_to :loop
end
