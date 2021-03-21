require 'rails_helper'

RSpec.describe 'UserSessions', type: :system do
  let(:user) { create(:user) }
  
  describe 'ログイン前' do
    context 'フォームの入力値が正常' do
      it 'ログイン処理が成功する'
        visit login_ptah
        fill_in "Email",	with: "user.email" 
        fill_in "Password",	with: "password"
        expect(page).to have_content 'Login successful'
        expect(current_paht).to eq root_path   
    end
    context 'フォームが未入力' do
      it 'ログイン処理が失敗する'
        visit login_path
        fill_in "Email",	with: "" 
        fill_in "Password",	with: "password"
        expect(page).to have_content 'Login failed'
        expect(current_paht).to eq login_path
    end
  end

  describe 'ログイン後' do
    context 'ログアウトボタンをクリック' do
      it 'ログアウト処理が成功する'
        login_as(user)
        click_link 'Logout'
        expect(page).to have_content 'Loged out'
        expect(current_path).to eq root_path 
    end
  end
end