# frozen_string_literal: true

feature 'Adding bookmarks' do
  scenario 'User adds bookmark' do
    visit('bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test bookmark')
    click_button('Submit')

    expect(page).to have_link('Test bookmark', href: 'http://www.testbookmark.com')
  end
end
