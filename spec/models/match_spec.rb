require 'rails_helper'

RSpec.describe Match, type: :model do

  let!(:admin) { create :user, id: 1, email: "admin@user.com", admin: true }
  let!(:student) { create :user, id: 2, email: "student@user.com", admin: false }
  let!(:student2) { create :user, id: 3,  email: "student2@user.com", admin: false }
  # let!(:student3) { create :user, id: 4,  email: "student3@user.com", admin: false }
  # let!(:student4) { create :user, id: 5,  email: "student4@user.com", admin: false }

  describe ".get_match_list" do
    let(:match_1) {create :match}
    let(:match_2) {create :match}

    it "includes student" do

      match1 = match_1.get_match_list


      match1.each do |match|
        match.each do |m|
        expect(m).to include (2)
        end
      end
    end

    it "does not include admin" do

      match1 = match_1.get_match_list

      match1.each do |match|
        match.each do |m|
        expect(m).to_not include (1)
        end
      end
    end

  end

end
