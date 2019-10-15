# frozen_string_literal: true

# require 'rails_helper'

# feature 'Create, edit, delete blog flow by Admin:' do
#   context 'new blog' do
#     let!(:user) { User.create(email:'test@test.com', password:'1111111') }
#     let(:blog) { FactoryBot.build(:blog) }

#     before do
#       visit user_session_path

#       fill_in 'Email',    with: user.email
#       fill_in 'Password', with: user.password

#       click_link 'Sign up'
#     end

#     context 'create blog with valid params' do
#       scenario 'adding a new blog' do
#         visit blogs_path

#         click_on 'Write a new blog'

#         fill_in 'Title',    with: blog.title
#         fill_in 'Comment',  with: blog.body

#         click_on 'Submit'

#         expect(page).to have_content blog.name
#       end
#     end
#   end
# end
