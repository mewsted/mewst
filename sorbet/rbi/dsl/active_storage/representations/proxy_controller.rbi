# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::Representations::ProxyController`.
# Please instead update this file by running `bin/tapioca dsl ActiveStorage::Representations::ProxyController`.

class ActiveStorage::Representations::ProxyController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionController::Base::HelperMethods
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
