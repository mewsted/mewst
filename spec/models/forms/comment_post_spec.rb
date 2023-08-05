# typed: false
# frozen_string_literal: true

RSpec.describe Forms::CommentPost do
  let!(:profile) { create(:profile, :for_user) }

  context "when invalid" do
    context "when comment is blank" do
      let!(:form) { Forms::CommentPost.new(profile:, comment: "") }

      it "is invalid" do
        expect(form.invalid?).to be(true)
        expect(form.errors.where(:comment, :blank)).to be_present
      end
    end

    context "when comment length is too long" do
      let!(:long_comment) { "a" * (Commentable::MAXIMUM_COMMENT_LENGTH + 1) }
      let!(:form) { Forms::CommentPost.new(profile:, comment: long_comment) }

      it "is invalid" do
        expect(form.invalid?).to be(true)
        expect(form.errors.where(:comment, :too_long)).to be_present
      end
    end
  end
end