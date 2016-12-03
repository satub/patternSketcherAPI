# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
oikein = Loop.create(name: 'knit')
nurin = Loop.create(name: 'purl')

pattern1 = Pattern.create(name: 'pearl knit', width_loops: 2, height_rows: 2, repeat_x: true, repeat_y: true)
pattern2 = Pattern.create(name: 'rib', width_loops: 4, height_rows: 2, repeat_x: true, repeat_y: true)

# Pattern 1
Stitch.create(row_number: 0, loop_number: 0, side: 0, pattern_id: pattern1.id, loop_id: oikein.id)
Stitch.create(row_number: 0, loop_number: 1, side: 0, pattern_id: pattern1.id, loop_id: nurin.id)
Stitch.create(row_number: 1, loop_number: 0, side: 0, pattern_id: pattern1.id, loop_id: nurin.id)
Stitch.create(row_number: 1, loop_number: 1, side: 0, pattern_id: pattern1.id, loop_id: oikein.id)

# Pattern 2
Stitch.create(row_number: 0, loop_number: 0, side: 0, pattern_id: pattern2.id, loop_id: nurin.id)
Stitch.create(row_number: 0, loop_number: 1, side: 0, pattern_id: pattern2.id, loop_id: nurin.id)
Stitch.create(row_number: 0, loop_number: 2, side: 0, pattern_id: pattern2.id, loop_id: oikein.id)
Stitch.create(row_number: 0, loop_number: 3, side: 0, pattern_id: pattern2.id, loop_id: oikein.id)
Stitch.create(row_number: 1, loop_number: 0, side: 0, pattern_id: pattern2.id, loop_id: nurin.id)
Stitch.create(row_number: 1, loop_number: 1, side: 0, pattern_id: pattern2.id, loop_id: nurin.id)
Stitch.create(row_number: 1, loop_number: 2, side: 0, pattern_id: pattern2.id, loop_id: oikein.id)
Stitch.create(row_number: 1, loop_number: 3, side: 0, pattern_id: pattern2.id, loop_id: oikein.id)
