# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: 'only allows letters and spaces' }

  def admin?
    role == 'admin'
  end

  def member?
    role == 'member'
  end
end
