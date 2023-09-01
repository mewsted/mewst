# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `FanoutPostJob`.
# Please instead update this file by running `bin/tapioca dsl FanoutPostJob`.

class FanoutPostJob
  class << self
    sig { params(post_id: ::String).returns(T.any(FanoutPostJob, FalseClass)) }
    def perform_later(post_id:); end

    sig { params(post_id: ::String).void }
    def perform_now(post_id:); end
  end
end
