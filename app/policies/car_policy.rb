class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin
        scope.all
      else
        scope.where(user: user)
      end
    end
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end
end
