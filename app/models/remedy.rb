# frozen_string_literal: true

# class Remedy
class Remedy < ApplicationRecord
  belongs_to :user
  has_many :disease_remedies
  has_many :diseases, through: :disease_remedies

  validates :name, presence: true
  validates :category, presence: true

  enum category: { fruit: 0, vegetable: 1, nuts: 2, dairy: 3, other: 4 }

  scope :by_category, ->(category) { where(category:) }
  scope :sort_by_name, ->(var) { order(name: var) }
end
