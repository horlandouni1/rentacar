class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #if user.admin
      #  scope.all
      #else
      #  scope.where(user: user)
      #end
      scope.all
    end
  end

  def index?
    return true if user.present? || user.admin
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

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
