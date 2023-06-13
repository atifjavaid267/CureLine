class RemediesController < ApplicationController
  load_and_authorize_resource

  def new; end

  def create
    @remedy.user_id = current_user.id
    if @remedy.save
      flash[:notice] = 'Remedy added successfully.'
      redirect_to remedies_path
    else
      flash[:alert] = @remedy.errors.full_messages.join(', ')
      render :new
    end
  end

  def index
    @fruits = @remedies.fruit
    @vegetables = @remedies.vegetable
    @nuts = @remedies.nuts
    @dairies = @remedies.dairy
    @others = @remedies.other
  end

  def destroy
    if @remedy.destroy
      flash[:notice] = 'Remedy deleted successfully.'
    else
      flash[:alert] = @remedy.errors.full_messages.join(', ')
    end
    redirect_to remedies_path
  end

  private

  def remedy_params
    params.require(:remedy).permit(:category, :name)
  end
end
