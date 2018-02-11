class Teachers::GroupsController < Teachers::ApplicationController
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
    @group = Group.find(params[:id])
    @group.destroy
 
    redirect_to teachers_groups_path
  end
end
