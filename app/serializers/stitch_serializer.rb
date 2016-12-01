class StitchSerializer < ActiveModel::Serializer
  attributes :id, :side, :loop_number, :row_number
  has_one :loop, serializer: LoopSerializer
end
