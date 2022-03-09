class CustomerWebhooksController < ApplicationController
  include ShopifyApp::WebhookVerification

  def customer_creation
    webhook = webhook_params.to_h
    CustomerCreateJob.perform_later(shop_domain, webhook[:id], webhook[:email])
  end

  private
  def webhook_params
    params.except(:controller, :type, :action).permit!
  end

end
