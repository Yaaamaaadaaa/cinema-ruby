require 'rails_helper'

RSpec.describe User do

  let(:user) { FactoryBot.create(:user) }

  describe 'index' do

    context 'ユーザーがログインしている場合' do

      before do
        Movie.create!(title: 'テスト', detail: 'テスト', running_time: '02:30')
        Schedule.create!(movie_id: 1, theater_number: 1, screening_date: '9:30')
        Reservation.create!(schedule_id: 1, user_id: user.id, reserved_seat: 'A2')
        visit new_user_session_path
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
        visit users_path
      end

      it '会員情報画面へ遷移できる' do
        expect(current_path).to eq('/users')
      end

      it 'お客様情報が表示される' do
        expect(page).to have_content user.email
      end

      it '会員情報変更ボタンが表示される' do
        expect(page).to have_button '変更はこちらから'
      end

      it '予約済み作品が表示される' do
        expect(page).to have_css '.card-title'
      end

    end

    context 'ユーザーがログインしていない場合' do

      before do
        visit users_path
      end

      it 'ログイン画面へ遷移する' do
        expect(current_path).to eq('/users/sign_in')
      end

    end

  end

end