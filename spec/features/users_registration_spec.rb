# frozen_string_literal: true

require 'rails_helper'

feature 'User registration:' do

  let!(:user) { FactoryBot.build(:user) }

  context 'with valid params' do
    scenario 'allows user to sign up' do
      visit new_user_registration_path

      fill_in 'Email',                 with: user.email
      fill_in 'Name',                  with: user.name
      fill_in 'Password',              with: user.password
      fill_in 'Password confirmation', with: user.password

      click_button 'Sign up'

      expect(page).to have_content 'Logout'
    end
  end

  context 'with invalid params' do
    scenario 'without password' do
      visit new_user_registration_path

      fill_in 'Email', with: user.email

      click_button 'Sign up'

      expect(page).to have_content "Password can't be blank"
    end
  end

    scenario 'without email' do
      visit new_user_registration_path

      fill_in 'Password', with: user.password

      click_button 'Sign up'

      expect(page).to have_content "Email can't be blank"
    end
   
  context 'with invalid email' do
    scenario 'it shows errors' do
      visit new_user_registration_path

      fill_in 'Email', with: 'hello@'

      click_button 'Sign up'

      expect(page).to have_content 'Email is invalid'
    end
  end

  context 'when password is too short' do
    scenario 'it shows errors' do
      visit new_user_registration_path

      fill_in 'Password', with: '1234'

      click_button 'Sign up'

      expect(page).to have_content 'Password is too short (minimum is 6 characters)'
    end
  end
end
