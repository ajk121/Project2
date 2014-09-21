class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? ==:admin
     can :manage, :all
    elsif user.role? ==:premium
     can [:read, :update], User, id: user.id
     can [:read, :create], Message
     can :read, View
     can :read, :home
    else
     can :read, View
     can :create, User
     can [:read, :update], User, id: user.id
     can :read, :home
    end
  end
end