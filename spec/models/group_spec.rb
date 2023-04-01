require 'rails_helper'

RSpec.describe 'Groups', type: :feature do
  describe 'Group index' do
    before(:each) do
      @user = User.create!(name:'user',email:'user1@gmail.com',password:'123456')
      @group = Group.create!(name:'group',icon:'icon1',user_id:@user.id)
      @group2 = Group.create!(name:'group',icon:'icon2',user_id:@user.id)
      @user.save!
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@gmail.com'
      fill_in "user_password",	with: "123456"
      click_button 'Log in'
      visit '/'
    end
    
    it 'should show all groups' do
      expect(page).to have_content('group')
      expect(page).to have_content('group')
    end

    it 'should show the group name' do
      expect(page).to have_content('group')
    end

    it 'should show the group icon' do
      expect(page).to have_content('group')
    end
  end
end