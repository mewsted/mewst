# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::Tasks::V2::OidcToken`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::Tasks::V2::OidcToken`.

class Google::Cloud::Tasks::V2::OidcToken
  sig { params(audience: T.nilable(String), service_account_email: T.nilable(String)).void }
  def initialize(audience: nil, service_account_email: nil); end

  sig { returns(String) }
  def audience; end

  sig { params(value: String).void }
  def audience=(value); end

  sig { void }
  def clear_audience; end

  sig { void }
  def clear_service_account_email; end

  sig { returns(String) }
  def service_account_email; end

  sig { params(value: String).void }
  def service_account_email=(value); end
end