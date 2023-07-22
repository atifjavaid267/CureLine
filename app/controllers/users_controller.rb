# frozen_string_literal: true

# class UsersController
class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]
  def home
    @diseases = Disease.all
  end
end
