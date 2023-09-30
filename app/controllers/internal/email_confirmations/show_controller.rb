# typed: true
# frozen_string_literal: true

class Internal::EmailConfirmations::ShowController < Internal::ApplicationController
  def call
    email_confirmation = EmailConfirmation.find_by(id: params[:email_confirmation_id])

    unless email_confirmation
      resource = Latest::ResponseErrorResource.new(code: Latest::ResponseErrorCode::NotFound, message: "Not found")
      return render(
        json: Latest::ResponseErrorSerializer.new([resource]),
        status: :not_found
      )
    end

    resource = Internal::EmailConfirmationResource.new(email_confirmation:)
    render(
      json: Internal::EmailConfirmationSerializer.new(resource)
    )
  end
end
