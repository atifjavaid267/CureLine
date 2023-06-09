# frozen_string_literal: true

class Remedy < ApplicationRecord
  belongs_to :user
  has_many :disease_remedies
end
