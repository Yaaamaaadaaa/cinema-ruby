require 'rails_helper'

RSpec.describe Schedule, type: :model do

  before do
    movie1 = FactoryBot.create(:movie)
  end

  it "スクリーン、映画ID、上映開始時間があれば登録できる" do 
    expect(FactoryBot.create(:schedule)).to be_valid
  end 

  it "映画IDがなければ登録できない" do 
    expect(FactoryBot.build(:schedule, movie_id: "")).to_not be_valid 
  end 

  it "存在しない映画の上映スケジュールは登録できない" do 
    expect(FactoryBot.build(:schedule, movie_id: 3)).to_not be_valid 
  end 

  it "一つの映画に複数のスケジュールが追加できる" do 
    schedule1 = FactoryBot.create(:schedule)
    expect(FactoryBot.build(:schedule)).to be_valid 
  end

  it "スクリーンがなければ登録できない" do 
    expect(FactoryBot.build(:schedule, theater_number: "")).to_not be_valid 
  end 

  it "上映開始時間がなければ登録できない" do 
    expect(FactoryBot.build(:schedule, screening_date: "")).to_not be_valid 
  end 

end