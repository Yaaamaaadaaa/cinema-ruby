require 'rails_helper'

RSpec.describe Movie, type: :model do

  it "タイトル、詳細、上映時間があれば登録できる" do 
    expect(FactoryBot.create(:movie)).to be_valid
  end 

  it "タイトルがなければ登録できない" do 
    expect(FactoryBot.build(:movie, title: "")).to_not be_valid 
  end 

  it "タイトルが重複していたら登録できない" do 
    movie1 = FactoryBot.create(:movie, title: "movie")
    expect(FactoryBot.build(:movie, title: movie1.title)).to_not be_valid
  end 

  it "詳細がなければ登録できない" do 
    expect(FactoryBot.build(:movie, detail: "")).to_not be_valid 
  end 

  it "上映時間がなければ登録できない" do 
    expect(FactoryBot.build(:movie, running_time: "")).to_not be_valid 
  end 

end