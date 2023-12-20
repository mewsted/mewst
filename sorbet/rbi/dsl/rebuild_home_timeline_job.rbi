# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `RebuildHomeTimelineJob`.
# Please instead update this file by running `bin/tapioca dsl RebuildHomeTimelineJob`.

class RebuildHomeTimelineJob
  class << self
    sig do
      params(
        profile_id: ::String,
        posts_limit: ::Integer,
        block: T.nilable(T.proc.params(job: RebuildHomeTimelineJob).void)
      ).returns(T.any(RebuildHomeTimelineJob, FalseClass))
    end
    def perform_later(profile_id:, posts_limit:, &block); end

    sig { params(profile_id: ::String, posts_limit: ::Integer).void }
    def perform_now(profile_id:, posts_limit:); end
  end
end
