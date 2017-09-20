class Api::UsersController < ApplicationController

  skip_before_action :verify_authenticity_token
  def index
    render status: 200, json: {
      rooms: User.all
    }.to_json
  end

  def show
    user = User.find(params[:id])

    render status: 200, json: {
      user: user
    }.to_json
  end

  

  def update
      user = User.find(params[:id])
      if user.update(user_params)
        render status: 200, json: {
          message: "Room successfully updated",
          admin: user.admin
        }.to_json
      else
         render status: 422, json: {
          message: "The user could not be updated",
          errors: user.errors
        }.to_json
      end
    end

  private

  def user_params
    params.require(:user).permit(:admin, :id)
  end

end
