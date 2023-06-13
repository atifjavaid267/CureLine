# frozen_string_literal: true

# class Disease
class Disease < ApplicationRecord
  belongs_to :user
  has_many :disease_remedies
  has_many :remedies, through: :disease_remedies
  has_many :health_concerns
  validates :name, presence: true

  scope :sort_by_alphabet, -> { order(name: 'asc') }
end
