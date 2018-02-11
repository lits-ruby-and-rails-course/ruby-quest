class Teachers::ApplicationController < ApplicationController
  before_action :authenticate_user!
  before_action :check_role

  private

  def check_role
    redirect_to root_path, alert: 'You are not a teacher' unless current_user.teacher?
  end
end
