require 'rails_helper'

feature 'User creates todo' do
  scenario 'succesfully' do
    sign_in

    click_on "Add New Todo"
    fill_in 'Title', with: 'First Todo'
    click_on 'Submit'
    expect(page).to have_css '.todos li', text: 'First Todo'
  end
end
