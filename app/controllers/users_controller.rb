class UsersController < ApplicationController
  before_filter :authenticate_user!
  expose(:user)
end
