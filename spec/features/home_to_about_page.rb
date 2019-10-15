require 'rails_helper'

feature 'redirection from home page to about me page' do
	scenario "click about me button" do

		visit root_path

		click_link "About Me"

		expect(page).to have_current_path about_path
		expect(page).to have_content 'About Me'
	end
end