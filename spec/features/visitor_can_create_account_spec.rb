# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Visitor can create an account', type: :feature do
  context 'when successful' do
    it 'can create a new user account' do
      username = 'mikejones'
      password = 'houston'

      visit '/signup'

      fill_in :user_username, with: username
      fill_in :user_password, with: password

      click_button 'Create Account'

      expect(page).to have_content("Hello #{username}!")
    end
  end

  context 'when username is blank' do
    it 'displays error' do
      username = ''
      password = 'houston'

      visit '/signup'

      fill_in :user_username, with: username
      fill_in :user_password, with: password

      click_button 'Create Account'

      expect(page).to have_current_path(signup_path)
      expect(page).to have_content("Username can't be blank")
    end
  end
end
