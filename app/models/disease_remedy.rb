# frozen_string_literal: true

# class diseaseRemedy
class DiseaseRemedy < ApplicationRecord
  belongs_to :disease
  belongs_to :remedy
end
