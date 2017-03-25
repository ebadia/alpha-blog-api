class Api::V1::UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:show, :update, :delete]

  respond_to :json

  # api_v1_users GET   /api/v1/users(.:format)        api/v1/users#index {:format=>:json}
  def index
    @users = User.all
    render json:@users
  end

  #             POST   /api/v1/users(.:format)        api/v1/users#create {:format=>:json}
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end
  # api_v1_user GET    /api/v1/users/:id(.:format)    api/v1/users#show {:format=>:json}
  def show
    render json:@user
  end
  #             PATCH  /api/v1/users/:id(.:format)    api/v1/users#update {:format=>:json}
  #             PUT    /api/v1/users/:id(.:format)    api/v1/users#update {:format=>:json}
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  #             DELETE /api/v1/users/:id(.:format)    api/v1/users#destroy {:format=>:json}
  def destroy
    @user.destroy
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username,:password,:email,:first_name,:last_name)
    end
end
