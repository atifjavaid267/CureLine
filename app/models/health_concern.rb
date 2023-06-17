# frozen_string_literal: true

# class HealhConcern
class HealthConcern < ApplicationRecord
  belongs_to :user
  belongs_to :disease
end
