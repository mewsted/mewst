# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::PubSub::V1::ListSchemasResponse`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::PubSub::V1::ListSchemasResponse`.

class Google::Cloud::PubSub::V1::ListSchemasResponse
  sig do
    params(
      next_page_token: T.nilable(String),
      schemas: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Cloud::PubSub::V1::Schema], T::Array[Google::Cloud::PubSub::V1::Schema]))
    ).void
  end
  def initialize(next_page_token: nil, schemas: T.unsafe(nil)); end

  sig { void }
  def clear_next_page_token; end

  sig { void }
  def clear_schemas; end

  sig { returns(String) }
  def next_page_token; end

  sig { params(value: String).void }
  def next_page_token=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Google::Cloud::PubSub::V1::Schema]) }
  def schemas; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Cloud::PubSub::V1::Schema]).void }
  def schemas=(value); end
end
