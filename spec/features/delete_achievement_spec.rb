require 'rails_helper'

feature 'it deletes an achievement' do
  scenario 'when user clicks delete' do
    achievement = FactoryGirl.create(:achievement, title: "Beat Assassin's Creed")

    visit('/')
    click_on("Beat Assassin's Creed")
    click_on('Delete Achievement')

    expect(page).to have_content('Achievement has been deleted')
  end
end

