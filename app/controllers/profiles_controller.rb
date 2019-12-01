class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_events = @user.events
    @user_guest = User.find_by(id: current_user)
  end
end
