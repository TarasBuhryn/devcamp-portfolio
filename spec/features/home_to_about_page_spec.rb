# frozen_string_literal: true

require 'rails_helper'

feature 'click about me button' do
	scenario "redirection from home page to about me page" do

		visit root_path

		click_link "About Me"

		expect(page).to have_current_path about_path
		expect(page).to have_content 'About Me'
	end
end