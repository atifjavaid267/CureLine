class DiseaseRemedy < ApplicationRecord
  belongs_to :disease
  belongs_to :remedy

  # def self.destroy

  # end
end
