require 'spec_helper'

feature 'entering location' do
  scenario 'submitting location' do
    visit '/'
    fill_in(:location, with: "Auckland")
    click_button('Submit')
    expect(page).to have_content('Auckland')
  end
end
