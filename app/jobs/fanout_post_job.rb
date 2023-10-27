# typed: strict
# frozen_string_literal: true

class FanoutPostJob < ApplicationJob
  queue_with_priority PRIORITY.fetch(:high)

  sig { params(post_id: T::Mewst::DatabaseId).void }
  def perform(post_id:)
    FanoutPostUseCase.new.call(post_id:)
  end
end
