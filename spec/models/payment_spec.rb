require 'rails_helper'

RSpec.describe 'payments', type: :feature do
  describe 'payment index' do
    before(:each) do
      @user = User.create!(name: 'user', email: 'user1@gmail.com', password: '123456')
      @group = Group.create!(name: 'group', icon: 'icon1', user_id: @user.id)
      @group2 = Group.create!(name: 'group', icon: 'icon2', user_id: @user.id)
      @payment1 = Payment.create!(amount: 100, user: @user, group: @group)
      @payment2 = Payment.create!(amount: 50, user: @user, group: @group)
      @user.save!
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@gmail.com'
      fill_in 'user_password',	with: '123456'
      click_button 'Log in'
      visit group_path(@group.id)
    end

    it 'should have the path to the payment index' do
      expect(page).to have_content('group')
    end

    it 'should show all payments' do
      expect(page).to have_content('100')
      expect(page).to have_content('50')
    end

    it 'should show the payment amount' do
      expect(page).to have_content('100')
    end
  end
end
