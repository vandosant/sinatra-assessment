require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "managing products" do
  scenario "user sees a welcome message on the homepage" do
    visit '/'

    expect(page).to have_content "Welcome"
  end
end