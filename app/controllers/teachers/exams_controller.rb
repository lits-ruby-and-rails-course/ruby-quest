class Teachers::ExamsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_role

  def index
  end

  private

  def check_role
    redirect_to root_path, alert: 'You are not a teacher' unless current_user.teacher?
  end
end
