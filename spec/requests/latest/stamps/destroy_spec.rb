# typed: false
# frozen_string_literal: true

RSpec.describe "DELETE /latest/posts/:post_id/stamp", type: :request, api_version: :latest do
  context "when valid input data" do
    let!(:user_1) { create(:user, :with_access_token_for_web) }
    let!(:profile_1) { user_1.profile }
    let!(:user_2) { create(:user) }
    let!(:profile_2) { user_2.profile }
    let!(:oauth_access_token) { profile_1.oauth_access_tokens.first }
    let!(:post_form) { Latest::PostForm.new(profile: profile_2, comment: "hello") }
    let!(:post) { CreatePostUseCase.new.call(profile: post_form.profile.not_nil!, comment: post_form.comment.not_nil!).post }
    let!(:stamp_form) { Latest::StampForm.new(profile: profile_1, target_post_id: post.id) }
    let!(:headers) { {"Authorization" => "bearer #{oauth_access_token.token}"} }

    before do
      CreateStampUseCase.new.call(
        profile: stamp_form.profile.not_nil!,
        target_post: stamp_form.target_post.not_nil!
      )
    end

    it "responses 200" do
      expect(Post.count).to eq(1)
      expect(Stamp.count).to eq(1)

      delete("/latest/posts/#{post.id}/stamp", headers:)
      expect(response).to have_http_status(:ok)

      expect(Post.count).to eq(1)
      expect(Stamp.count).to eq(0)

      expected = {
        post: {
          id: post.id,
          comment: post.comment,
          profile: {
            atname: profile_2.atname,
            avatar_url: profile_2.avatar_url,
            description: profile_2.description,
            name: profile_2.name,
            viewer_has_followed: false
          },
          published_at: post.published_at.iso8601,
          stamps_count: 0,
          viewer_has_stamped: false
        }
      }
      actual = JSON.parse(response.body)
      expect(actual).to include(expected.deep_stringify_keys)

      assert_response_schema_confirm(200)
    end
  end
end
