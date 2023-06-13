class HealthConcernsController < ApplicationController
  def index
    @healthconcerns = HealthConcern.all
  end

  def new; end

  def create; end

  def destroy; end
end
