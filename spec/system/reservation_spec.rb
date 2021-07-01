require 'rails_helper'

RSpec.describe Movie do

  let(:movie) { FactoryBot.create(:movie) }
  let(:user) { FactoryBot.create(:user) }
  let(:schedule) { FactoryBot.create(:schedule) }

  describe 'new' do

    context 'ユーザーがログインしている場合' do

      before do
        Movie.create!(title: 'テスト', detail: 'テスト', running_time: '02:30')
        Schedule.create!(movie_id: 1, theater_number: 1, screening_date: '9:30')
        visit new_user_session_path
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
        visit new_reservation_path(schedule: 1, selects: 'A2')
      end

      it '新規予約画面へ遷移できる' do
        expect(current_path).to eq('/reservations/new')
      end

      it 'お客様情報が表示される' do
        expect(page).to have_content user.email
      end

      it '予約作品名が表示される' do
        expect(page).to have_content 'テスト'
      end

      it '上映開始時間が表示される' do
        expect(page).to have_content '9:30'
      end

    end

    context 'ユーザーがログインしていない場合' do

      before do
        visit new_reservation_path(schedule: 1, selects: 'A2')
      end

      it 'ログイン画面へ遷移する' do
        expect(current_path).to eq('/users/sign_in')
      end

    end

  end

end