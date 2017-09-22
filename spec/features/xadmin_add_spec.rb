require 'rails_helper'

feature 'Manage admins', js: true do
  let!(:admin) { create :user, email: "admin@user.com", admin: true }
  let!(:student) { create :user, email: "student@user.com", admin: false }
  scenario 'change to admin' do


    login_as admin

    visit users_path


    # page.find(:css, ".user 1").click
    # page.find_by_id(student.id).find("option[value='true']").select_option
    #

    page.find(:id, student.id).find("option[value='true']").select_option

    # byebug

    # page.execute_script("$('form').submit()")

    expect(student).to have_attributes(:admin => true)
    #  expect(page).to have_content('Be Batman')
  end
end
