class OwnersController < ApplicationController
  before_action :find_owner, only: [:show,:edit,:update]
  def index
    @owners= Owner.all
  end
  def show
  end
  def new
    @owner = Owner.new
  end
  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to @owner
    else
      render :new
    end
  end
  def edit
  end
  def updatemod2
    if @owner.update(owner_params)
      redirect_to @owner
    else
      render :edit
    end
  end
  def destroy
    Owner.find(params[:id]).destroy
    redirect_to owners_path
  end



  private

  def owner_params
    params.require(:owner).permit(:name, pet_ids:[])
  end

  def find_owner
    @owner= Owner.find(params[:id])
  end

end
