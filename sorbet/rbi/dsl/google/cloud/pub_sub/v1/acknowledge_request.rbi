# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::PubSub::V1::AcknowledgeRequest`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::PubSub::V1::AcknowledgeRequest`.

class Google::Cloud::PubSub::V1::AcknowledgeRequest
  sig do
    params(
      ack_ids: T.nilable(T.any(Google::Protobuf::RepeatedField[String], T::Array[String])),
      subscription: T.nilable(String)
    ).void
  end
  def initialize(ack_ids: T.unsafe(nil), subscription: nil); end

  sig { returns(Google::Protobuf::RepeatedField[String]) }
  def ack_ids; end

  sig { params(value: Google::Protobuf::RepeatedField[String]).void }
  def ack_ids=(value); end

  sig { void }
  def clear_ack_ids; end

  sig { void }
  def clear_subscription; end

  sig { returns(String) }
  def subscription; end

  sig { params(value: String).void }
  def subscription=(value); end
end
