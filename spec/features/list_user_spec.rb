require 'rails_helper'

describe "Current user viewing the list of rooms" do


  let(:admin) { create :user, email: "admin@user.com", admin: true }
  let!(:student) { create :user, email: "student@user.com", admin: false }

  # let!(:day1) { create :day}
  # let!(:day2) { create :day}
  # let!(:day3) { create :day }

  it "as admin show user index" do
    login_as admin
    visit users_path

    expect(page).to have_text("admin@user.com")
    expect(page).to have_text("student@user.com")
  end

  it "as student show no user index" do
    login_as student
    visit users_path

    expect(page).to have_text("admin@user.com")
    expect(page).to have_text("student@user.com")
  end

  # it "does not show other users rooms" do
  #   visit rooms_url
  #
  #   expect(page).not_to have_text("Another users room")
  # end
end
