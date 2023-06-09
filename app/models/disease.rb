# frozen_string_literal: true

class Disease < ApplicationRecord
  belongs_to :user
  has_many :disease_remedies
end
