class StichSerializer < ActiveModel::Serializer
  attributes :id, :side, :loop_number, :row_number
  has_many :loops, serializer: LoopSerializer
end
