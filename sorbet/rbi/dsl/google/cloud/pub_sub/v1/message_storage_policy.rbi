# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::PubSub::V1::MessageStoragePolicy`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::PubSub::V1::MessageStoragePolicy`.

class Google::Cloud::PubSub::V1::MessageStoragePolicy
  sig do
    params(
      allowed_persistence_regions: T.nilable(T.any(Google::Protobuf::RepeatedField[String], T::Array[String]))
    ).void
  end
  def initialize(allowed_persistence_regions: Google::Protobuf::RepeatedField.new(:string)); end

  sig { returns(Google::Protobuf::RepeatedField[String]) }
  def allowed_persistence_regions; end

  sig { params(value: Google::Protobuf::RepeatedField[String]).void }
  def allowed_persistence_regions=(value); end

  sig { void }
  def clear_allowed_persistence_regions; end
end