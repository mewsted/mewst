# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::Tasks::V2::Attempt`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::Tasks::V2::Attempt`.

class Google::Cloud::Tasks::V2::Attempt
  sig do
    params(
      dispatch_time: T.nilable(Google::Protobuf::Timestamp),
      response_status: T.nilable(Google::Rpc::Status),
      response_time: T.nilable(Google::Protobuf::Timestamp),
      schedule_time: T.nilable(Google::Protobuf::Timestamp)
    ).void
  end
  def initialize(dispatch_time: nil, response_status: nil, response_time: nil, schedule_time: nil); end

  sig { void }
  def clear_dispatch_time; end

  sig { void }
  def clear_response_status; end

  sig { void }
  def clear_response_time; end

  sig { void }
  def clear_schedule_time; end

  sig { returns(T.nilable(Google::Protobuf::Timestamp)) }
  def dispatch_time; end

  sig { params(value: T.nilable(Google::Protobuf::Timestamp)).void }
  def dispatch_time=(value); end

  sig { returns(T.nilable(Google::Rpc::Status)) }
  def response_status; end

  sig { params(value: T.nilable(Google::Rpc::Status)).void }
  def response_status=(value); end

  sig { returns(T.nilable(Google::Protobuf::Timestamp)) }
  def response_time; end

  sig { params(value: T.nilable(Google::Protobuf::Timestamp)).void }
  def response_time=(value); end

  sig { returns(T.nilable(Google::Protobuf::Timestamp)) }
  def schedule_time; end

  sig { params(value: T.nilable(Google::Protobuf::Timestamp)).void }
  def schedule_time=(value); end
end