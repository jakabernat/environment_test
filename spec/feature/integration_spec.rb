# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: 10.99
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[publishedDate]", with: '2004-08-05'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: 10.99
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[publishedDate]", with: '2004-08-05'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10.99')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: 10.99
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[publishedDate]", with: '2004-08-05'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid date' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: 10.99
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[publishedDate]", with: '2004-08-05'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2004-08-05')
  end
end