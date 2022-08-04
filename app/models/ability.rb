# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      cannot :read, :all
      return unless user.present?

      can :read, :all [Food, Recipe]
      can :create, :all
      return unless user.admin?
      can :destroy, :all, user_id: user_id
    
  end
end
