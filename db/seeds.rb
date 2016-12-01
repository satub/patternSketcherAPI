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

row1_1 = Stitch.create(row_number: 1, loop_number: 1, side: 0, pattern_id: pattern1.id, loop_id: oikein.id)
row1_2 = Stitch.create(row_number: 1, loop_number: 2, side: 0, pattern_id: pattern1.id, loop_id: nurin.id)
row2_1 = Stitch.create(row_number: 2, loop_number: 1, side: 1, pattern_id: pattern1.id, loop_id: nurin.id)
row2_2 = Stitch.create(row_number: 2, loop_number: 2, side: 1, pattern_id: pattern1.id, loop_id: oikein.id)
