ShopifyApp.configure do |config|
  config.application_name = "EssenceLoyality"
  config.old_secret = ""
  config.scope = "read_products, read_orders, read_customers" # Consult this page for more scope options:
                                  # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = "2021-07"
  config.shop_session_repository = 'Shop'

  config.reauth_on_access_scope_changes = true

  # config.allow_jwt_authentication = true
  # config.allow_cookie_authentication = false

  config.api_key = Rails.application.credentials[:development][:SHOPIFY_API_KEY]
  config.secret = Rails.application.credentials[:development][:SHOPIFY_API_SECRET]
  if defined? Rails::Server
    raise('Missing SHOPIFY_API_KEY. See https://github.com/Shopify/shopify_app#requirements') unless config.api_key
    raise('Missing SHOPIFY_API_SECRET. See https://github.com/Shopify/shopify_app#requirements') unless config.secret
  end

  domain = 'https://9c51-103-85-10-14.ngrok.io'
  topics = %w[app/uninstalled orders/create orders/delete customers/create customers/read]
  config.webhooks = topics.each_with_object([]) do |topic, a|
    options = {
      topic: topic,
      format: "json", 
      address: "#{domain}/webhooks/#{topic.parameterize(separator: '_')}"
    }
    a << options
  end
end

# ShopifyApp::Utils.fetch_known_api_versions                        # Uncomment to fetch known api versions from shopify servers on boot
# ShopifyAPI::ApiVersion.version_lookup_mode = :raise_on_unknown    # Uncomment to raise an error if attempting to use an api version that was not previously known
