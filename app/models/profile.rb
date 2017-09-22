class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: {message: 'You need to provide at least your first name'}


  def full_name
    "#{first_name} #{last_name}"
  end

end
