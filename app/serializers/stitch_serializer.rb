class StitchSerializer < ActiveModel::Serializer
  self.root = true
  attributes :id, :side, :loop_number, :row_number, :loop_id, :pattern_id
  has_one :loop, serializer: LoopSerializer
end
