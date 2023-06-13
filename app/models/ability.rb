# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can %i[new create index destroy view_remedies], Disease
      can %i[new create index destroy], Remedy
      can %i[new create], DiseaseRemedy
    elsif user.member?
      can %i[index view_remedies], Disease
    end
  end
end
