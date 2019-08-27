require 'capybara/rspec'
feature 'homepage' do
scenario 'working?' do
visit '/'
expect(page).to have_content('Hello World')
end
end
