# typed: strict
# frozen_string_literal: true

class V1::ViaResource < V1::ApplicationResource
  delegate :name, to: :oauth_application

  sig { params(oauth_application: OauthApplication).void }
  def initialize(oauth_application:)
    @oauth_application = oauth_application
  end

  sig { returns(OauthApplication) }
  attr_reader :oauth_application
  private :oauth_application
end
