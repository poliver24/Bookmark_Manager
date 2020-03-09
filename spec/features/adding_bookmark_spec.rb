# frozen_string_literal: true

feature 'Adding bookmarks' do
  scenario 'User adds bookmark' do
    visit('bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
