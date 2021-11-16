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
  ['劇場版「鬼滅の刃」無限列車編', '果てなく続く 無限の夢の中へ', '2:10'],
  ['ハニーレモンソーダ', '髪はレモン、性格はソーダな男の子。あなたに出会い世界が変わる', '2:10'],
  ['東京リベンジャーズ', '最旬実力派俳優陣が大集結！ 過去の人生にリベンジし今を変える！', '2:10'],
  ['ファイナル・プラン(字幕)', '伝説の爆破強盗・カーターは愛のため、最後の復讐計画に挑む！', '2:10'],
  ['竜とそばかすの姫', '凶暴ながらもどこか孤独な竜との出逢いをきっかけに、すずは自分の中にある迷いや弱さと向き合っていく――', '2:10']
].each do |title, detail, running_time|
  Movie.create!(
    { title: title, detail: detail, running_time: running_time }
  )
end

10.upto(12) do |month|
  1.upto(31) do |day|
    if day % 3 == 0 && day % 5 == 0
      [
        [1, Time.local(2021,month,day,9,30), 1],
        [1, Time.local(2021,month,day,18,30), 3],
        [2, Time.local(2021,month,day,9,30), 2],
        [2, Time.local(2021,month,day,12,40), 2],
        [2, Time.local(2021,month,day,15,30), 3],
        [3, Time.local(2021,month,day,9,30), 3],
        [3, Time.local(2021,month,day,10,20), 3],
        [3, Time.local(2021,month,day,18,30), 7],
        [4, Time.local(2021,month,day,9,30), 4],
        [4, Time.local(2021,month,day,10,20), 4],
        [5, Time.local(2021,month,day,9,30), 5],
        [5, Time.local(2021,month,day,10,20), 5],
        [5, Time.local(2021,month,day,15,30), 5],
        [6, Time.local(2021,month,day,9,30), 6],
        [6, Time.local(2021,month,day,15,30), 6],
        [6, Time.local(2021,month,day,18,30), 7],
        [7, Time.local(2021,month,day,18,30), 2],
        [8, Time.local(2021,month,day,9,30), 8],
        [8, Time.local(2021,month,day,12,30), 8],
        [8, Time.local(2021,month,day,15,30), 7],
        [8, Time.local(2021,month,day,20,30), 8],
        [9, Time.local(2021,month,day,8,30), 1],
        [9, Time.local(2021,month,day,10,30), 6],
        [9, Time.local(2021,month,day,18,30), 6],
        [10, Time.local(2021,month,day,9,30), 1],
        [10, Time.local(2021,month,day,12,30), 3],
        [10, Time.local(2021,month,day,15,30), 8],
        [10, Time.local(2021,month,day,18,30), 1]
      ].each do |movie_id, screening_date, theater_number|
        Schedule.create!(
          { movie_id: movie_id, screening_date: screening_date, theater_number: theater_number }
        )
      end
    elsif day % 3 == 0
      [
        [1, Time.local(2021,month,day,15,30), 2],
        [1, Time.local(2021,month,day,18,30), 3],
        [2, Time.local(2021,month,day,15,30), 3],
        [2, Time.local(2021,month,day,18,30), 4],
        [3, Time.local(2021,month,day,9,30), 3],
        [3, Time.local(2021,month,day,10,20), 3],
        [3, Time.local(2021,month,day,15,30), 5],
        [4, Time.local(2021,month,day,11,00), 4],
        [4, Time.local(2021,month,day,13,50), 4],
        [4, Time.local(2021,month,day,18,30), 2],
        [5, Time.local(2021,month,day,9,30), 2],
        [5, Time.local(2021,month,day,10,20), 3],
        [5, Time.local(2021,month,day,18,30), 2],
        [6, Time.local(2021,month,day,15,30), 6],
        [6, Time.local(2021,month,day,18,30), 7],
        [7, Time.local(2021,month,day,9,40), 4],
        [7, Time.local(2021,month,day,12,30), 7],
        [7, Time.local(2021,month,day,13,30), 1],
        [7, Time.local(2021,month,day,18,20), 4],
        [8, Time.local(2021,month,day,13,20), 5],
        [8, Time.local(2021,month,day,20,30), 5],
        [9, Time.local(2021,month,day,8,30), 1],
        [9, Time.local(2021,month,day,12,00), 2],
        [9, Time.local(2021,month,day,10,30), 1],
        [9, Time.local(2021,month,day,18,30), 1],
        [10, Time.local(2021,month,day,8,00), 6],
        [10, Time.local(2021,month,day,10,30), 5],
        [10, Time.local(2021,month,day,15,30), 6]
      ].each do |movie_id, screening_date, theater_number|
        Schedule.create!(
          { movie_id: movie_id, screening_date: screening_date, theater_number: theater_number }
        )
      end
    elsif day % 5 == 0
      [
        [1, Time.local(2021,month,day,9,30), 1],
        [1, Time.local(2021,month,day,12,30), 1],
        [1, Time.local(2021,month,day,15,30), 2],
        [2, Time.local(2021,month,day,9,30), 2],
        [2, Time.local(2021,month,day,12,40), 2],
        [2, Time.local(2021,month,day,18,30), 4],
        [3, Time.local(2021,month,day,9,30), 3],
        [3, Time.local(2021,month,day,15,30), 5],
        [3, Time.local(2021,month,day,18,30), 7],
        [4, Time.local(2021,month,day,10,20), 4],
        [4, Time.local(2021,month,day,15,30), 4],
        [4, Time.local(2021,month,day,18,30), 5],
        [5, Time.local(2021,month,day,18,30), 5],
        [6, Time.local(2021,month,day,9,30), 6],
        [6, Time.local(2021,month,day,10,20), 6],
        [7, Time.local(2021,month,day,9,30), 7],
        [7, Time.local(2021,month,day,12,30), 7],
        [7, Time.local(2021,month,day,15,30), 1],
        [7, Time.local(2021,month,day,18,30), 2],
        [8, Time.local(2021,month,day,9,30), 8],
        [8, Time.local(2021,month,day,12,30), 8],
        [8, Time.local(2021,month,day,15,30), 7],
        [9, Time.local(2021,month,day,14,00), 2],
        [9, Time.local(2021,month,day,15,30), 6],
        [9, Time.local(2021,month,day,17,10), 6],
        [10, Time.local(2021,month,day,10,30), 4],
        [10, Time.local(2021,month,day,14,20), 3],
        [10, Time.local(2021,month,day,15,10), 3],
        [10, Time.local(2021,month,day,19,00), 2]
      ].each do |movie_id, screening_date, theater_number|
        Schedule.create!(
          { movie_id: movie_id, screening_date: screening_date, theater_number: theater_number }
        )
      end
    else
      [
        [1, Time.local(2021,month,day,9,30), 1],
        [1, Time.local(2021,month,day,12,30), 1],
        [1, Time.local(2021,month,day,13,50), 2],
        [1, Time.local(2021,month,day,14,30), 3],
        [2, Time.local(2021,month,day,9,30), 2],
        [2, Time.local(2021,month,day,12,40), 2],
        [3, Time.local(2021,month,day,9,30), 3],
        [3, Time.local(2021,month,day,10,20), 3],
        [3, Time.local(2021,month,day,15,30), 5],
        [4, Time.local(2021,month,day,9,30), 4],
        [4, Time.local(2021,month,day,10,20), 2],
        [4, Time.local(2021,month,day,18,30), 5],
        [5, Time.local(2021,month,day,9,30), 5],
        [6, Time.local(2021,month,day,9,20), 6],
        [7, Time.local(2021,month,day,9,10), 7],
        [7, Time.local(2021,month,day,12,20), 7],
        [7, Time.local(2021,month,day,15,30), 1],
        [7, Time.local(2021,month,day,18,30), 2],
        [8, Time.local(2021,month,day,9,10), 8],
        [8, Time.local(2021,month,day,12,20), 8],
        [9, Time.local(2021,month,day,7,30), 2],
        [9, Time.local(2021,month,day,9,00), 7],
        [9, Time.local(2021,month,day,11,50), 2],
        [9, Time.local(2021,month,day,14,20), 3],
        [10, Time.local(2021,month,day,11,30), 3],
        [10, Time.local(2021,month,day,13,30), 7],
        [10, Time.local(2021,month,day,15,50), 8],
        [10, Time.local(2021,month,day,18,00), 1]
      ].each do |movie_id, screening_date, theater_number|
        Schedule.create!(
          { movie_id: movie_id, screening_date: screening_date, theater_number: theater_number }
        )
      end
    end
  end
end

[
  ['admin@test.com', 'password'],
  ['gest@example.com', 'password']
].each do |email, password|
  User.create!(
    { email: email, password: password }
  )
end

[
  ['I10', 1, 2],
  ['I11', 1, 2]
].each do |reserved_seat, user_id, schedule_id|
  Reservation.create!(
    { reserved_seat: reserved_seat, user_id: user_id, schedule_id: schedule_id }
  )
end