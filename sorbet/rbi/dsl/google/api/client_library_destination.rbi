# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Api::ClientLibraryDestination`.
# Please instead update this file by running `bin/tapioca dsl Google::Api::ClientLibraryDestination`.

module Google::Api::ClientLibraryDestination
  class << self
    sig { returns(Google::Protobuf::EnumDescriptor) }
    def descriptor; end

    sig { params(number: Integer).returns(T.nilable(Symbol)) }
    def lookup(number); end

    sig { params(symbol: Symbol).returns(T.nilable(Integer)) }
    def resolve(symbol); end
  end
end

Google::Api::ClientLibraryDestination::CLIENT_LIBRARY_DESTINATION_UNSPECIFIED = 0
Google::Api::ClientLibraryDestination::GITHUB = 10
Google::Api::ClientLibraryDestination::PACKAGE_MANAGER = 20