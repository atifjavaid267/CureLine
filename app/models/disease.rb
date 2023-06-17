# frozen_string_literal: true

# class Disease
class Disease < ApplicationRecord
  belongs_to :user
  has_many :disease_remedies
  has_many :remedies, through: :disease_remedies
  has_many :health_concerns
  validates :name, presence: true

  after_destroy :destroy_associated_disease_remedies

  scope :sort_by_alphabet, -> { order(name: 'asc') }
  scope :get_by_name, ->(name) { where(name:) }

  private

  def destroy_associated_disease_remedies
    disease_remedies.destroy_all
  end
end
