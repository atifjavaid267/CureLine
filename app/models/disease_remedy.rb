class DiseaseRemedy < ApplicationRecord
  belongs_to :diseases
  belongs_to :remedies
end
