class QuizPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    return true
    # record.user == user
  end

  def create?
    return true
  end
end
