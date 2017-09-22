require 'rails_helper'

feature 'Day test', js: true do
  let!(:admin) { create :user, email: "admin@user.com", admin: true }
  let!(:student) { create :user, email: "student@user.com", admin: false }
  let!(:student2) { create :user, email: "student2@user.com", admin: false }
  let!(:student3) { create :user, email: "student3@user.com", admin: false }
  let!(:student4) { create :user, email: "student4@user.com", admin: false }

  scenario 'Brace yourself!' do

    visit  pages_path
    sleep(3)
  end


  scenario 'visit new day path from days' do

    login_as admin

    visit days_path


    click_link 'New match'

    # byebug



    expect(current_path).to eq new_day_path
    #  expect(page).to have_content('Be Batman')
  end
  scenario 'make a new day and show matches on new day' do
    match1 = Match.create!(matchlist: [])
    login_as admin

    visit new_day_path

    select("2017", :from => "day[datematch(1i)]")
    select("October", :from => "day[datematch(2i)]")
    select("20", :from => "day[datematch(3i)]")
    find('input[name="commit"]').click


    # byebug



    expect(page).to have_content("2017-10-20")
    expect(page).to have_content(student.email)
    expect(page).to have_content(student2.email)
    expect(page).to have_content(student3.email)
    expect(page).to have_content(student4.email)
  end

  scenario 'can not make day in the past' do
    match1 = Match.create!(matchlist: [])
    login_as admin

    visit new_day_path

    select("2017", :from => "day[datematch(1i)]")
    select("September", :from => "day[datematch(2i)]")
    select("10", :from => "day[datematch(3i)]")
    find('input[name="commit"]').click


    expect(page).to have_content("You cannot make days in the past")

  end
end
