class DiseaseRemedy < ApplicationRecord
  belongs_to :disease
  belongs_to :remedy
end
