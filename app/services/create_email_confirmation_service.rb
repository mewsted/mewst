# typed: strict
# frozen_string_literal: true

class CreateEmailConfirmationService < ApplicationService
  class Input < T::Struct
    const :email, String
    const :locale, String

    sig { params(form: Internal::EmailConfirmationForm).returns(Input) }
    def self.from_internal_form(form:)
      new(
        email: form.email,
        locale: form.locale
      )
    end
  end

  class Result < T::Struct
    const :email_confirmation, EmailConfirmation
  end

  sig { params(input: Input).returns(Result) }
  def call
    email_confirmation = EmailConfirmation.create!(
      email: input.email,
      code: EmailConfirmation.generate_code,
      event: EmailConfirmation::EVENT_SIGN_UP
    )
    SendEmailConfirmationMailJob.perform_later(email_confirmation_id: email_confirmation.id, locale: T.must(input.locale))

    Result.new(email_confirmation:)
  end
end
