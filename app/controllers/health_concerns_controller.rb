class HealthConcernsController < ApplicationController
  load_resource :disease, only: [:create]
  load_and_authorize_resource through: :disease, only: [:create]
  load_and_authorize_resource except: %i[index destroy]

  def create
    byebug
    @health_concern.user_id = current_user.id
    if @health_concern.save
      flash[:notice] = 'Added to your health concerns successfully.'
    else
      flash[:alert] = @health_concern.errors.full_messages.join(', ')
    end
    redirect_to view_remedies_disease_path(@disease)
  end

  def index
    byebug
    # @healthconcerns = HealthConcern.all
  end

  def destroy; end
end
