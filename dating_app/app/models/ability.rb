class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
     can :manage, :all
   elsif user.role == 'premium'
     can [:read, :update], User, id: user.id
     can [:read, :create], Message, id: user.id
     can :read, View
     can :read, :home
   elsif user.role == 'basic'
     can :read, View
     can :create, User
     can [:read, :update], User, id: user.id
     can :read, :home
   elsif user.role == 'inactive'
   
   else
     can :create, User
     can :read, :home
   end
 end
end