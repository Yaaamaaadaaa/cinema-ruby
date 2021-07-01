require 'rails_helper'

RSpec.describe Movie do

  let(:movie) { FactoryBot.create(:movie) }
  let(:movie2) { FactoryBot.create(:movie) }
  let(:admin) { FactoryBot.create(:user, id: 1) }
  let(:user1) { FactoryBot.create(:user, id: 2) }
  let(:user2) { FactoryBot.create(:user, id: 3) }

  describe "index" do

    context "一般ユーザーがログインした場合" do

      before do
        visit new_user_session_path
        fill_in 'user[email]', with: user2.email
        fill_in 'user[password]', with: user2.password
        click_button 'ログイン'
        visit root_path
      end

      it '映画が表示される' do
        expect(page).to have_css '.container'
      end

      it '上映スケジュールリンクが表示される' do
        expect(page).to have_link '上映スケジュール'
      end

      it '会員情報リンクが表示される' do
        expect(page).to have_link '会員情報'
      end

      it '上映スケジュールの追加リンクが表示されない' do
        expect(page).to_not have_link '上映スケジュールの追加'
      end

      it 'スケジュール追加画面へ遷移できない' do
        visit new_movie_path
        expect(current_path).to_not eq('/movies/new')
      end

    end

    context "管理者がログインした場合" do

      before do
        visit new_user_session_path
        fill_in 'user[email]', with: admin.email
        fill_in 'user[password]', with: admin.password
        click_button 'ログイン'
        visit root_path
      end

      it '上映スケジュールの追加ボタンが表示される' do
        expect(page).to have_link '上映スケジュールの追加'
      end

      it 'スケジュール追加画面へ遷移できる' do
        visit new_movie_path
        expect(current_path).to eq('/movies/new')
      end

    end

  end

  describe "new" do

    before do
      visit new_user_session_path
      fill_in 'user[email]', with: admin.email
      fill_in 'user[password]', with: admin.password
      click_button 'ログイン'
      visit new_movie_path
    end

    it '映画のタイトルフォームが表示される' do
      expect(page).to have_field 'movie[title]'
    end

    it '映画の詳細フォームが表示される' do
      expect(page).to have_field 'movie[detail]'
    end

    it '映画の上映時間フォームが表示される' do
      expect(page).to have_field 'movie[running_time]'
    end

    it '映画の新規登録ボタンが表示される' do
      expect(page).to have_button '新規登録'
    end

  end

end