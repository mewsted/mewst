# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Api::LaunchStage`.
# Please instead update this file by running `bin/tapioca dsl Google::Api::LaunchStage`.

module Google::Api::LaunchStage
  class << self
    sig { returns(Google::Protobuf::EnumDescriptor) }
    def descriptor; end

    sig { params(number: Integer).returns(T.nilable(Symbol)) }
    def lookup(number); end

    sig { params(symbol: Symbol).returns(T.nilable(Integer)) }
    def resolve(symbol); end
  end
end

Google::Api::LaunchStage::ALPHA = 2
Google::Api::LaunchStage::BETA = 3
Google::Api::LaunchStage::DEPRECATED = 5
Google::Api::LaunchStage::EARLY_ACCESS = 1
Google::Api::LaunchStage::GA = 4
Google::Api::LaunchStage::LAUNCH_STAGE_UNSPECIFIED = 0
Google::Api::LaunchStage::PRELAUNCH = 7
Google::Api::LaunchStage::UNIMPLEMENTED = 6