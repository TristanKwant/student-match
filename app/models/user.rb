class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches




  # def change_role
  #
  #   # if admin == "admin"
  #     @user.admin = true
  #     @user.save
  #   # end
  #   # if admin != "admin"
  #   #   @user.admin = false
  #   #   @user.save
  #   # end
  # end

end
