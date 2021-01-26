# class Api::V1::Auth::RegistrationsController < ApplicationController
# end

class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
#   def new
#     personal = {

# "smile face":[
#   {
#       "url":"http://localhost:3333/face/smile/smile1.img"
#   },
#   {
#       "url":"http://localhost:3333/face/smile/smile2.img"
#   }
# ]
# }
# render :json => personal
#   end

# def create
#   @user = User.params(:email, :password)
#   @user.save!
# end

  private
  def sign_up_params
    params.permit(:email, :password, :password_confirmation, :registration)
  end

  def account_update_params
    params.permit(:name, :email)
  end

end
