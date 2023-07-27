# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::PubSub::V1::PubsubMessage`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::PubSub::V1::PubsubMessage`.

class Google::Cloud::PubSub::V1::PubsubMessage
  sig do
    params(
      attributes: T.nilable(T.any(Google::Protobuf::Map[String, String], T::Hash[String, String])),
      data: T.nilable(String),
      message_id: T.nilable(String),
      ordering_key: T.nilable(String),
      publish_time: T.nilable(Google::Protobuf::Timestamp)
    ).void
  end
  def initialize(attributes: T.unsafe(nil), data: nil, message_id: nil, ordering_key: nil, publish_time: nil); end

  sig { returns(Google::Protobuf::Map[String, String]) }
  def attributes; end

  sig { params(value: Google::Protobuf::Map[String, String]).void }
  def attributes=(value); end

  sig { void }
  def clear_attributes; end

  sig { void }
  def clear_data; end

  sig { void }
  def clear_message_id; end

  sig { void }
  def clear_ordering_key; end

  sig { void }
  def clear_publish_time; end

  sig { returns(String) }
  def data; end

  sig { params(value: String).void }
  def data=(value); end

  sig { returns(String) }
  def message_id; end

  sig { params(value: String).void }
  def message_id=(value); end

  sig { returns(String) }
  def ordering_key; end

  sig { params(value: String).void }
  def ordering_key=(value); end

  sig { returns(T.nilable(Google::Protobuf::Timestamp)) }
  def publish_time; end

  sig { params(value: T.nilable(Google::Protobuf::Timestamp)).void }
  def publish_time=(value); end
end
