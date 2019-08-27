require 'capybara/rspec'
feature 'homepage' do
  scenario 'working?' do
    visit '/'
    expect(page).to have_content('Welcome to your Bookmarks!')
  end
end
feature 'homepage' do
  scenario 'button working?' do
    visit '/'
    expect(page).to have_button('See Bookmarks')
  end
end
feature 'bookmarks' do
  scenario 'working?' do
    visit '/bookmarks'
    expect(page).to have_content('http://www.google.co.uk')
    expect(page).to have_content('http://www.amazon.co.uk')
    expect(page).to have_content('http://www.autotrader.co.uk')
  end
end
