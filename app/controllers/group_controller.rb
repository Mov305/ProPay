class GroupController < ApplicationController
  def index
    @groups = Group.where(user_id: current_user.id).includes(:payments)
  end

  def show
    @group = Group.includes(:payments).find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    p @group
    if @group.save
      redirect_to group_index_path
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
