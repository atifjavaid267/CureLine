# frozen_string_literal: true

class Disease < ApplicationRecord
  belongs_to :user
  has_many :disease_remedies
  has_many :health_concerns
end
