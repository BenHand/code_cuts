class UsersController < ApplicationController

  def index
    @instructors = User.where(admin: true)
  end

end
