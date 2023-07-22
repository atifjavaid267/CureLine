# frozen_string_literal: true

# class User
class User < ApplicationRecord
  has_many :diseases
  has_many :remedies
  has_many :health_concerns

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: 'only allows letters and spaces' }

  enum role: { admin: 0, member: 1 }
end
