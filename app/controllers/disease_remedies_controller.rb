class DiseaseRemediesController < ApplicationController
  load_resource :disease, only: %i[new create]
  load_and_authorize_resource through: :disease, only: %i[new create]
  def new
    @remedies = Remedy.all
  end

  def create
    if @disease_remedy.save
      flash[:notice] = 'Remedy added to disease successfully.'

    else
      flash[:alert] = @disease_remedy.errors.full_messages.join(', ')
    end
    redirect_to stored_location
  end

  private

  def disease_remedy_params
    params.require(:disease_remedy).permit(:remedy_id, :disease_id)
  end
end
