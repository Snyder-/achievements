require 'rails_helper'

feature 'it creates an achievement' do
  scenario 'with valid data' do
    visit('/')
    click_on('New Achievement')
    fill_in('Title', with: 'Read a book')
    fill_in('Description', with: 'Excellent read')
    select('everyone', from: 'Privacy')

    check('Featured')
    attach_file('Cover image', "#{Rails.root}/spec/assets/images/cover_image.png")
    click_on('Create Achievement')

    expect(page).to have_content('Achievement has been created')
    expect(Achievement.last.title).to eq('Read a book')
  end
end
