class PatternSerializer < ActiveModel::Serializer
  attributes :id, :name, :width_loops, :height_rows, :repeat_y
  has_many :stitches, serializer: StitchSerializer
  # has_many :loops, serializer: LoopSerializer
end
