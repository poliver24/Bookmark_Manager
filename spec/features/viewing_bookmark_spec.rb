feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
  scenario 'I want to view all of my bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.makersacademy.com"
  end
end