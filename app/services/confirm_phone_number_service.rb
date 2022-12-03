# typed: strict
# frozen_string_literal: true

class ConfirmPhoneNumberService < ApplicationService
  class Error < T::Struct
    const :message, String
  end

  class Result < T::Struct
    const :errors, T::Array[Error], default: []
    const :phone_number_confirmation, T.nilable(PhoneNumberConfirmation)
  end

  sig { params(form: PhoneNumberConfirmationForm).void }
  def initialize(form:)
    @form = form
  end

  sig { returns(Result) }
  def call
    phone_number_confirmation = PhoneNumberConfirmation.create!(
      phone_number: @form.phone_number,
      phone_number_full: @form.phone_number_full,
      code: PhoneNumberConfirmation.generate_code
    )

    PhoneNumberConfirmationJob.perform_async(phone_number_confirmation.id)

    Result.new(phone_number_confirmation:)
  end
end
