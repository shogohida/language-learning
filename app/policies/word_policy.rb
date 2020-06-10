class WordPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
    # record.user = current_user?
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
