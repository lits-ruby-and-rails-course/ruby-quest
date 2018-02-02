class Teachers::GroupsController < ApplicationController
  before_action :authenticate_user!
 # before_action :check_role

 
def index
    @groups = Group.all
  end
 
  def show
    @group = Group.find(params[:id])
  end
 
  def new
    @group = Group.new
  end
 
  def edit
    @group = Group.find(params[:id])
  end
 
  def create
    @group = Group.new params.require(:group).permit(:title)
 
    if @group.save
      redirect_to  teachers_groups_path
    else
      render 'new'
    end
  end
 
  def update
 		@group = Group.find(params[:id])
    if @group.update params.require(:group).permit(:title)
      redirect_to teachers_groups_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @group.destroy
 
    redirect_to teachers_groups_path
  end
  private

  # def check_role
    # redirect_to root_path, alert: 'You are not a teacher' unless current_user.teacher?
  # end
end