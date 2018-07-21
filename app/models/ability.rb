class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :today, to: :read_today

    user ||= User.new # guest user (not logged in)

    if user.user?
      can :read, Category
      can :manage, Post
    end

    can :read, DailyReport if user.vip?

    can :manage, :all if user.super?
  end
end
