class UsersController < ApplicationController
  def show
    username = '@' + params[:id]
    @user = ADN::API::User.retrieve(username)['data']
    @posts = ADN::API::Post.by_user(username)['data']
  end
end
