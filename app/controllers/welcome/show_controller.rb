# typed: true
# frozen_string_literal: true

class Welcome::ShowController < ApplicationController
  include ControllerConcerns::Authenticatable
  include ControllerConcerns::Localizable

  around_action :set_locale

  sig { returns(T.untyped) }
  def call
    redirect_to(home_path) if signed_in?
  end
end
