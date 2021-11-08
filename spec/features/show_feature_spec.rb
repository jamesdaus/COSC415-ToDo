require 'rails_helper'

RSpec.describe "show page", type: :feature, js: true do

  before :all do 
    Capybara.use_default_driver
    visit root_path

    Task.create!(title: 'Do cosc415 reading', description: 'hi :)', start:DateTime.new.noon, due: DateTime.new(2021, 11, 11), complete: false)
    Task.create!(title: 'Do NLP hoemework', due: DateTime.new(2021, 11, 10), complete: false)
    Task.create!(title: 'SWE iteration 2', start: DateTime.new(2021, 11, 8),  due: DateTime.new(2021, 11, 21), complete: false)
    visit root_path
  end


  it "should be able to mark a task as complete" do
    click_on('Do cosc415 reading')
    click_on('Mark as complete')
    click_on('Do cosc415 reading')
    expect(page).to have_content 'Mark as incomplete'  
  end

  it "should be able to revert a completed task to incomplete" do
    click_on('Do cosc415 reading')
    click_on('Mark as complete')
    click_on('Do cosc415 reading')
    click_on('Mark as incomplete')
    click_on('Do cosc415 reading')
    expect(page).to have_content 'Mark as complete'  
  end

end