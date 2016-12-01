class Row < ApplicationRecord
  belongs_to :pattern
  belongs_to :loop
end
