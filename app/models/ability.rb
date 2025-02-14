# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :create, Borrowing
      can :update, Borrowing, user_id: user.id
      can :destroy, Borrowing, user_id: user.id
      can :return, Borrowing, user_id: user.id
    end
  end
end
