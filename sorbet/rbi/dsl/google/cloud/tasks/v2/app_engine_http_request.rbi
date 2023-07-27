# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Cloud::Tasks::V2::AppEngineHttpRequest`.
# Please instead update this file by running `bin/tapioca dsl Google::Cloud::Tasks::V2::AppEngineHttpRequest`.

class Google::Cloud::Tasks::V2::AppEngineHttpRequest
  sig do
    params(
      app_engine_routing: T.nilable(Google::Cloud::Tasks::V2::AppEngineRouting),
      body: T.nilable(String),
      headers: T.nilable(T.any(Google::Protobuf::Map[String, String], T::Hash[String, String])),
      http_method: T.nilable(T.any(Symbol, Integer)),
      relative_uri: T.nilable(String)
    ).void
  end
  def initialize(app_engine_routing: nil, body: nil, headers: T.unsafe(nil), http_method: nil, relative_uri: nil); end

  sig { returns(T.nilable(Google::Cloud::Tasks::V2::AppEngineRouting)) }
  def app_engine_routing; end

  sig { params(value: T.nilable(Google::Cloud::Tasks::V2::AppEngineRouting)).void }
  def app_engine_routing=(value); end

  sig { returns(String) }
  def body; end

  sig { params(value: String).void }
  def body=(value); end

  sig { void }
  def clear_app_engine_routing; end

  sig { void }
  def clear_body; end

  sig { void }
  def clear_headers; end

  sig { void }
  def clear_http_method; end

  sig { void }
  def clear_relative_uri; end

  sig { returns(Google::Protobuf::Map[String, String]) }
  def headers; end

  sig { params(value: Google::Protobuf::Map[String, String]).void }
  def headers=(value); end

  sig { returns(T.any(Symbol, Integer)) }
  def http_method; end

  sig { params(value: T.any(Symbol, Integer)).void }
  def http_method=(value); end

  sig { returns(String) }
  def relative_uri; end

  sig { params(value: String).void }
  def relative_uri=(value); end
end
