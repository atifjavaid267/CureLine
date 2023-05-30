# frozen_string_literal: true

class User < ApplicationRecord
  has_many :diseases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: 'only allows letters and spaces' }
end
