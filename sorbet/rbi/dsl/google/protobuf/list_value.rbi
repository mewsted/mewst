# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::ListValue`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::ListValue`.

class Google::Protobuf::ListValue
  sig do
    params(
      values: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Protobuf::Value], T::Array[Google::Protobuf::Value]))
    ).void
  end
  def initialize(values: T.unsafe(nil)); end

  sig { void }
  def clear_values; end

  sig { returns(Google::Protobuf::RepeatedField[Google::Protobuf::Value]) }
  def values; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Protobuf::Value]).void }
  def values=(value); end
end
