# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Api::Internal::Following::IndexController`.
# Please instead update this file by running `bin/tapioca dsl Api::Internal::Following::IndexController`.

class Api::Internal::Following::IndexController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::ComponentDataFetcherHelper
    include ::ImageHelper
    include ::PreviewHelper
    include ::ApplicationController::HelperMethods

    sig { returns(T.nilable(::Profile)) }
    def current_profile; end

    sig { returns(T.nilable(::User)) }
    def current_user; end

    sig { returns(T::Boolean) }
    def signed_in?; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
