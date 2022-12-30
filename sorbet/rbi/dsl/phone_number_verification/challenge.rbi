# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `PhoneNumberVerification::Challenge`.
# Please instead update this file by running `bin/tapioca dsl PhoneNumberVerification::Challenge`.

class PhoneNumberVerification::Challenge
  sig { returns(T.nilable(::String)) }
  def challenged_confirmation_code; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def challenged_confirmation_code=(value); end
end