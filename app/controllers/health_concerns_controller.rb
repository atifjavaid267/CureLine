class HealthConcernsController < ApplicationController
  load_resource :disease, only: %i[create]
  load_and_authorize_resource through: :disease, only: %i[create]
  load_and_authorize_resource except: %i[create]

  def create
    @health_concern.user_id = current_user.id
    if @health_concern.save
      flash[:notice] = 'Added to your health concerns successfully.'
    else
      flash[:alert] = @health_concern.errors.full_messages.join(', ')
    end
    redirect_to view_remedies_disease_path(@disease)
  end

  def index
    @health_concerns = HealthConcern.includes(:disease).all.page(params[:page])
  end

  def destroy
    if @health_concern.destroy
      flash[:notice] = 'Removed disease from health concerns successfully.'
    else
      flash[:alert] = @health_concern.errors.full_messages.join(', ')
    end
    redirect_to health_concerns_path
  end
end
