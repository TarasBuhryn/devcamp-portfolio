# frozen_string_literal: true

require 'rails_helper'

feature 'Create, edit, delete blog flow by Admin:' do
  let!(:user) { FactoryBot.create(:user, roles: 'site_admin') }
  let!(:topic){ FactoryBot.create(:topic) }
  let(:blog)  { FactoryBot.build(:blog) }

  before do
    visit user_session_path

    fill_in 'Email',    with: user.email
    fill_in 'Password', with: user.password

    click_on 'Log in'    
  end

  context 'create blog with valid params' do
    scenario 'adding a new blog' do
      visit new_blog_path 

      fill_in 'Title',    with: blog.title
      select topic.title
      fill_in 'Comment',  with: blog.body

      click_on 'Submit'

      expect(page).to have_content blog.title
    end
  end

  context 'update blog with valid params' do
  	let!(:blog) { FactoryBot.create(:blog, topic_id: topic.id) }
    scenario 'updating a new blog' do
      visit blog_path(blog) 

      click_on 'Edit'

      fill_in 'Title',    with: blog.title
      select topic.title
      fill_in 'Comment',  with: blog.body

      click_on 'Submit'

      expect(page).to have_content blog.title
    end

    # scenario 'delete a blog', js: true do
    #   visit blog_path(blog)

    #   expect(page).to have_content blog.title

    #   find(:css, 'i.fa.fa-trash').click

    #   visit blog_path

    #   expect(page).to have_no_content blog.title
    # end
  end
end
