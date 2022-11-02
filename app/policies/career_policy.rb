class CareerPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    return true
  end

  def new?
    user.admin?
  end

  def create?
    user.admin?
  end

  def edit?
    return update?
  end

  def update
    return record.user_id == user.id
  end

  def destroy?
    return record.user == user
  end

end
