class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, Product
    can :manage, User, id: user.id
    can [:read, :create], Comment
    if user.admin?
      can :manage, :all
    end
  end
end