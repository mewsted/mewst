# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  draw :api

  # standard:disable Layout/ExtraSpacing, Rails/MatchRoute
  match "/@:atname",                via: :get,    as: :profile,                     to: "profiles/show#call"
  match "/@:atname/atom",           via: :get,    as: :profile_atom,                to: "profiles/atom/show#call"
  match "/@:atname/check",          via: :post,   as: :profile_check,               to: "checks/create#call"
  match "/@:atname/follow",         via: :delete, as: :profile_follow,              to: "follows/destroy#call"
  match "/@:atname/follow",         via: :post,                                     to: "follows/create#call"
  match "/@:atname/posts/:post_id", via: :get,    as: :profile_post,                to: "posts/show#call"
  match "/accounts",                via: :post,   as: :account_list,                to: "accounts/create#call"
  match "/accounts/new",            via: :get,    as: :new_account,                 to: "accounts/new#call"
  match "/api/internal/following",  via: :post,   as: :internal_api_following_list, to: "api/internal/following/index#call"
  match "/api/posts",               via: :post,   as: :api_post_list,               to: "api/posts/create#call"
  match "/email_confirmations",     via: :post,   as: :email_confirmation_list,     to: "email_confirmations/create#call"
  match "/email_confirmations/new", via: :get,    as: :new_email_confirmation,      to: "email_confirmations/new#call"
  match "/home",                    via: :get,    as: :home,                        to: "home/show#call"
  match "/notifications",           via: :get,    as: :notification_list,           to: "notifications/index#call"
  match "/password",                via: :patch,  as: :password,                    to: "passwords/update#call"
  match "/password/edit",           via: :get,    as: :edit_password,               to: "passwords/edit#call"
  match "/password_reset",          via: :get,    as: :password_reset,              to: "password_resets/new#call"
  match "/password_reset",          via: :post,                                     to: "password_resets/create#call"
  match "/posts/:post_id",          via: :delete, as: :post,                        to: "posts/destroy#call"
  match "/posts/:post_id/stamp",    via: :delete, as: :post_stamp,                  to: "stamps/destroy#call"
  match "/posts/:post_id/stamp",    via: :post,                                     to: "stamps/create#call"
  match "/search",                  via: :get,    as: :search,                      to: "search/show#call"
  match "/settings",                via: :get,    as: :settings,                    to: "settings/index#call"
  match "/settings/profile",        via: :get,    as: :settings_profile,            to: "settings/profiles/show#call"
  match "/settings/profile",        via: :patch,                                    to: "settings/profiles/update#call"
  match "/settings/user",           via: :get,    as: :settings_user,               to: "settings/users/show#call"
  match "/settings/user",           via: :patch,                                    to: "settings/users/update#call"
  match "/sign_in",                 via: :get,    as: :sign_in,                     to: "sign_in/new#call"
  match "/sign_in",                 via: :post,                                     to: "sign_in/create#call"
  match "/sign_out",                via: :get,    as: :sign_out,                    to: "sign_out/show#call"
  match "/sign_up",                 via: :get,    as: :sign_up,                     to: "sign_up/new#call"
  match "/sign_up",                 via: :post,                                     to: "sign_up/create#call"

  root "welcome/show#call"
  # standard:enable Layout/ExtraSpacing, Rails/MatchRoute
end
