class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
     can :manage, :all
   elsif user.role == 'premium'
     can [:read, :update], User, id: user.id
     # can [:read, :create, :update, :destroy, :reply], Message, {receiver_id: user.id, sender_id: user.id }
     can :create, Message
     can [:read, :reply], Message do |message|
      [message.receiver_id, message.sender_id].include? user.id
    end
    can [:destroy], Message, receiver_id: user.id
    can :read, View
    can :read, :home
  elsif user.role == 'basic'
   can :read, View
   can :create, User
   can [:read, :update], User, id: user.id
   can :read, :home
 else
   can :create, User
   can :read, :home
 end
end
end