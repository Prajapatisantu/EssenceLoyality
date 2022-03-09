# frozen_string_literal: true

class AuthenticatedController < ApplicationController
  include ShopifyApp::Authenticated

  helper_method :shop_domain, :shop

  def shop_domain
    @shop_domain ||= shop_session.url
  end

  def shop
    @shop ||= Shop.find_by_shopify_domain(shop_domain)
  end
end
