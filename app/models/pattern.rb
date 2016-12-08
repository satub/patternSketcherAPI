class Pattern < ApplicationRecord
  has_many :stitches
  has_many :loops, through: :stitches

  accepts_nested_attributes_for :stitches

  def stitches=(stitches_attributes)
    stitches_attributes.each do |stitch|
      stitch["pattern_id"] = self.id
      if stitch.has_key?("id")
         @old_stitch = Stitch.find_by(id: stitch["id"].to_s)
         @old_stitch.update(stitch)
      else
        @new_stitch = Stitch.create(stitch)
      end
    end
    ##destroy useless stitches
    Stitch.where(pattern_id: self.id).where("loop_number >= ?", self.width_loops).delete_all
    Stitch.where(pattern_id: self.id).where("row_number >= ?", self.height_rows).delete_all
  end
end
