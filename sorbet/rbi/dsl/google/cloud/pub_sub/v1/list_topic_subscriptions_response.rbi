# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::PubSub::V1::ListTopicSubscriptionsResponse`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::PubSub::V1::ListTopicSubscriptionsResponse`.

class Google::Cloud::PubSub::V1::ListTopicSubscriptionsResponse
  sig do
    params(
      next_page_token: T.nilable(String),
      subscriptions: T.nilable(T.any(Google::Protobuf::RepeatedField[String], T::Array[String]))
    ).void
  end
  def initialize(next_page_token: nil, subscriptions: T.unsafe(nil)); end

  sig { void }
  def clear_next_page_token; end

  sig { void }
  def clear_subscriptions; end

  sig { returns(String) }
  def next_page_token; end

  sig { params(value: String).void }
  def next_page_token=(value); end

  sig { returns(Google::Protobuf::RepeatedField[String]) }
  def subscriptions; end

  sig { params(value: Google::Protobuf::RepeatedField[String]).void }
  def subscriptions=(value); end
end
