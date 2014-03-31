require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "managing products" do
  scenario "user sees a welcome message on the homepage" do
    visit '/'

    expect(page).to have_content "Welcome"
  end

  scenario "user is able to add a product" do
    visit '/'

    click_link "Add a Product"
    fill_in "new_product", with: "Laptop"
    click_on "Create Product"

    expect(page).to have_content "Laptop"
  end
end