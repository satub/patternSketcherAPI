class Pattern < ApplicationRecord
  has_many :stitches
  has_many :loops, through: :stitches

  accepts_nested_attributes_for :stitches

  def stitches=(stitches_attributes)
    binding.pry
    stitches_attributes.each do |stitch|
      if stitch.has_key?("id")
        # binding.pry
         @old_stitch = Stitch.find_by(id: stitch["id"].to_s)
        #  stitch.delete("id")
         @old_stitch.update(stitch)
      else
        # binding.pry
        stitch["pattern_id"] = self.id
        @new_stitch = Stitch.create(stitch)
      end
    end
    # binding.pry
  end
end
