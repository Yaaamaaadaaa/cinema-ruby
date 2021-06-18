# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
  ['シン・エヴァンゲリオン劇場版', 'さらば、全てのエヴァンゲリオン', '2:10'],
  ['ラーヤと龍の王国(吹替)', 'いま、世界の運命は彼女の手に', '2:10'],
  ['ミッドナイトスワン', '世界で一番美しいラブストーリー', '2:10'],
  ['砕け散るところを見せてあげる', '常識を覆す、衝撃の愛の物語', '2:10'],
  ['映画 モンスターハンター', '想像を絶する、世界へ', '2:10'],
  ['劇場版「鬼滅の刃」無限列車編', '果てなく続く 無限の夢の中へ', '2:10']
].each do |title, detail, running_time|
  Movie.create!(
    { title: title, detail: detail, running_time: running_time}
  )
end

[
  [1, '2021-7-1 9:30', 1],
  [7, '2021-7-1 10:20', 1],
  [1, '2021-7-1 12:00', 1],
  [2, '2021-7-1 9:30', 2],
  [2, '2021-7-1 12:00', 2],
  [3, '2021-7-1 9:30', 3],
  [3, '2021-7-1 12:00', 3],
  [4, '2021-7-1 9:30', 4],
  [4, '2021-7-1 12:00', 4],
  [5, '2021-7-1 9:30', 5],
  [5, '2021-7-1 12:00', 5],
  [8, '2021-7-1 9:30', 6],
  [6, '2021-7-1 12:00', 6]
].each do |theater_number, screening_date, movie_id|
  Schedule.create!(
    { theater_number: theater_number, screening_date: screening_date, movie_id: movie_id }
  )
end