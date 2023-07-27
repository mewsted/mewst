# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Rpc::Help`.
# Please instead update this file by running `bin/tapioca dsl Google::Rpc::Help`.

class Google::Rpc::Help
  sig do
    params(
      links: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Rpc::Help::Link], T::Array[Google::Rpc::Help::Link]))
    ).void
  end
  def initialize(links: T.unsafe(nil)); end

  sig { void }
  def clear_links; end

  sig { returns(Google::Protobuf::RepeatedField[Google::Rpc::Help::Link]) }
  def links; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Rpc::Help::Link]).void }
  def links=(value); end
end
