# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Api::Publishing`.
# Please instead update this file by running `bin/tapioca dsl Google::Api::Publishing`.

class Google::Api::Publishing
  sig do
    params(
      api_short_name: T.nilable(String),
      codeowner_github_teams: T.nilable(T.any(Google::Protobuf::RepeatedField[String], T::Array[String])),
      doc_tag_prefix: T.nilable(String),
      documentation_uri: T.nilable(String),
      github_label: T.nilable(String),
      library_settings: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Api::ClientLibrarySettings], T::Array[Google::Api::ClientLibrarySettings])),
      method_settings: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Api::MethodSettings], T::Array[Google::Api::MethodSettings])),
      new_issue_uri: T.nilable(String),
      organization: T.nilable(T.any(Symbol, Integer)),
      proto_reference_documentation_uri: T.nilable(String)
    ).void
  end
  def initialize(api_short_name: nil, codeowner_github_teams: T.unsafe(nil), doc_tag_prefix: nil, documentation_uri: nil, github_label: nil, library_settings: T.unsafe(nil), method_settings: T.unsafe(nil), new_issue_uri: nil, organization: nil, proto_reference_documentation_uri: nil); end

  sig { returns(String) }
  def api_short_name; end

  sig { params(value: String).void }
  def api_short_name=(value); end

  sig { void }
  def clear_api_short_name; end

  sig { void }
  def clear_codeowner_github_teams; end

  sig { void }
  def clear_doc_tag_prefix; end

  sig { void }
  def clear_documentation_uri; end

  sig { void }
  def clear_github_label; end

  sig { void }
  def clear_library_settings; end

  sig { void }
  def clear_method_settings; end

  sig { void }
  def clear_new_issue_uri; end

  sig { void }
  def clear_organization; end

  sig { void }
  def clear_proto_reference_documentation_uri; end

  sig { returns(Google::Protobuf::RepeatedField[String]) }
  def codeowner_github_teams; end

  sig { params(value: Google::Protobuf::RepeatedField[String]).void }
  def codeowner_github_teams=(value); end

  sig { returns(String) }
  def doc_tag_prefix; end

  sig { params(value: String).void }
  def doc_tag_prefix=(value); end

  sig { returns(String) }
  def documentation_uri; end

  sig { params(value: String).void }
  def documentation_uri=(value); end

  sig { returns(String) }
  def github_label; end

  sig { params(value: String).void }
  def github_label=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Google::Api::ClientLibrarySettings]) }
  def library_settings; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Api::ClientLibrarySettings]).void }
  def library_settings=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Google::Api::MethodSettings]) }
  def method_settings; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Api::MethodSettings]).void }
  def method_settings=(value); end

  sig { returns(String) }
  def new_issue_uri; end

  sig { params(value: String).void }
  def new_issue_uri=(value); end

  sig { returns(T.any(Symbol, Integer)) }
  def organization; end

  sig { params(value: T.any(Symbol, Integer)).void }
  def organization=(value); end

  sig { returns(String) }
  def proto_reference_documentation_uri; end

  sig { params(value: String).void }
  def proto_reference_documentation_uri=(value); end
end
