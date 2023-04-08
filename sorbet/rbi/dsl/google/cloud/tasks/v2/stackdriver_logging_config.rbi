# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::Tasks::V2::StackdriverLoggingConfig`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::Tasks::V2::StackdriverLoggingConfig`.

class Google::Cloud::Tasks::V2::StackdriverLoggingConfig
  sig { params(sampling_ratio: T.nilable(Float)).void }
  def initialize(sampling_ratio: nil); end

  sig { void }
  def clear_sampling_ratio; end

  sig { returns(Float) }
  def sampling_ratio; end

  sig { params(value: Float).void }
  def sampling_ratio=(value); end
end