# typed: strict
# frozen_string_literal: true

class PostPolicy < ApplicationPolicy
  sig { returns(T::Boolean) }
  def destroy?
    profile == T.cast(record, Post).profile
  end
end
