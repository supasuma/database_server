require 'spec_helper'

feature 'visiting pages' do
  scenario 'visiting homepage' do
    visit('/')
    expect(page).to have_content("WHY IS THIS SO HARD")
  end

  scenario 'enter parameters into /set route' do
    visit('/set?name=SummerIsAwesome')
    expect(page.status_code).to eq(200)
    expect(page).to have_content(["name","SummerIsAwesome"])
  end

  scenario 'enter parameters into /set route' do
    visit('/set?name=SummerIsAwesome')
    visit('/get?key=name')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('SummerIsAwesome')
  end
end
