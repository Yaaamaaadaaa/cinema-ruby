require 'rails_helper'

RSpec.describe Reservation, type: :model do

  before do
    movie1 = FactoryBot.create(:movie)
    user1 = FactoryBot.create(:user)
    schedule1 = FactoryBot.create(:schedule)
  end

  it "ユーザーID、スケジュールID、予約席があれば登録できる" do 
    expect(FactoryBot.create(:reservation)).to be_valid
  end 

  it "ユーザーIDがなければ登録できない" do 
    expect(FactoryBot.build(:reservation, user_id: "")).to_not be_valid 
  end 

  it "存在しないユーザーは予約できない" do 
    expect(FactoryBot.build(:reservation, user_id: 3)).to_not be_valid 
  end 

  it "ユーザーは複数の予約ができる" do 
    reservation1 = FactoryBot.create(:reservation)
    expect(FactoryBot.build(:reservation)).to be_valid 
  end

  it "スケジュールがなければ登録できない" do 
    expect(FactoryBot.build(:reservation, schedule_id: "")).to_not be_valid 
  end 

  it "存在しないスケジュールは予約できない" do 
    expect(FactoryBot.build(:reservation, schedule_id: 3)).to_not be_valid 
  end 

  it "予約した席がなければ登録できない" do 
    expect(FactoryBot.build(:reservation, reserved_seat: "")).to_not be_valid 
  end 

end