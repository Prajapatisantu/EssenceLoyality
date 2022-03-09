require "test_helper"

class CustomerWebhooksControllerTest < ActionDispatch::IntegrationTest
  test "should get customer_creation" do
    get customer_webhooks_customer_creation_url
    assert_response :success
  end
end
