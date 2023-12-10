# typed: false
# frozen_string_literal: true

RSpec.describe "GET /internal/email_confirmations/:email_confirmation_id", type: :request, api_version: :internal do
  context "`email_confirmation_id` が不正なとき" do
    let!(:token) { ActionController::HttpAuthentication::Token.encode_credentials(Rails.configuration.mewst["internal_api_token"]) }
    let!(:headers) { {"HTTP_AUTHORIZATION" => token} }
    let!(:email_confirmation_id) { "unknown" }

    it "`404` を返すこと" do
      get("/internal/email_confirmations/#{email_confirmation_id}", headers:)

      expected = {
        errors: [
          {
            code: "not_found",
            message: "Not found"
          }
        ]
      }
      actual = JSON.parse(response.body)
      expect(actual).to include(expected.deep_stringify_keys)

      expect(response).to have_http_status(:not_found)
      assert_response_schema_confirm(404)
    end
  end

  context "`email_confirmation_id` が正しいとき" do
    let!(:token) { ActionController::HttpAuthentication::Token.encode_credentials(Rails.configuration.mewst["internal_api_token"]) }
    let!(:headers) { {"HTTP_AUTHORIZATION" => token} }
    let!(:email_confirmation) { create(:email_confirmation) }
    let!(:email_confirmation_id) { email_confirmation.id }

    it "`200` を返すこと" do
      get("/internal/email_confirmations/#{email_confirmation_id}", headers:)

      expected = {
        email_confirmation: build_email_confirmation_resource(email_confirmation:)
      }
      actual = JSON.parse(response.body)
      expect(actual).to include(expected.deep_stringify_keys)

      expect(response).to have_http_status(:ok)
      assert_response_schema_confirm(200)
    end
  end
end
