# frozen_string_literal: true

# Disease Controller
class DiseasesController < ApplicationController
  load_and_authorize_resource
  before_action :store_location, only: %i[view_remedies]

  def new; end

  def create
    @disease.user_id = current_user.id
    if @disease.save
      flash[:notice] = 'Disease added successfully.'
      redirect_to diseases_path
    else
      flash[:alert] = @disease.errors.full_messages.join(', ')
      render :new
    end
  end

  def index
    @diseases = @diseases.sort_by_alphabet.page(params[:page])
  end

  def destroy
    if @disease.destroy
      flash[:notice] = 'Disease deleted successfully.'
    else
      flash[:alert] = @disease.errors.full_messages.join(', ')
    end
    redirect_to diseases_path
  end

  def view_remedies
    @remedies = @disease.remedies.sort_by_name('asc')
  end

  def search
    @selected_disease = params[:selected_disease]

    if @selected_disease == 'Search'
      redirect_to search_disease_path(search_query: params[:search_query])
    else
      @disease = Disease.find_by(name: @selected_disease)

      if @disease
        redirect_to view_remedies_disease_path(@disease)
      else
        flash.now[:alert] = 'No disease found.'
        render root_path
      end
    end
  end

  private

  def disease_params
    params.require(:disease).permit(:name)
  end
end
