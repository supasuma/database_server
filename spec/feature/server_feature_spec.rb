require 'spec_helper'

feature 'visiting pages' do
  scenario 'visiting homepage' do
    visit('/')
    expect(page).to have_content("WHY IS THIS SO HARD")
  end

  scenario 'visiting set page' do
    visit('/set')
    expect(page.status_code).to eq(200)
  end

  scenario 'visiting get page' do
    visit('/get')
    expect(page.status_code).to eq(200)
  end
end
