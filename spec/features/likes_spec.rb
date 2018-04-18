require 'rails_helper'

feature 'user can like a post' do
  scenario 'user can like an unliked post' do
    visit('/users/sign_up')
    fill_in 'user_email', with: "Noelle@noelle.com"
    fill_in 'user_password', with: "noelle12"
    fill_in 'user_password_confirmation', with: "noelle12"
    click_button 'Sign up'
    click_link('New Post')
    fill_in 'post_title', with: 'Hello'
    fill_in 'post_body', with: 'Hello again'
    click_button 'Create Post'
    click_button 'Like'
    expect(page).to have_content("1 like")
  end
end
