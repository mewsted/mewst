# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GeneratedUrlHelpersModule`.
# Please instead update this file by running `bin/tapioca dsl GeneratedUrlHelpersModule`.

module GeneratedUrlHelpersModule
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::PolymorphicRoutes

  sig { params(args: T.untyped).returns(String) }
  def internal_account_list_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_email_confirmation_challenge_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_email_confirmation_list_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_email_confirmation_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_profile_post_list_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_pubsub_add_post_to_home_timeline_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_pubsub_fanout_post_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_session_list_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def internal_tasks_send_email_confirmation_mail_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def latest_follow_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def latest_me_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def latest_post_list_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def latest_post_stamp_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def latest_profile_post_list_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def latest_timeline_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_properties_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_routes_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailers_url(*args); end
end
