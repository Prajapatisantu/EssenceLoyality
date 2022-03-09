class CustomerCreateJob < ApplicationJob
  queue_as :default

  def perform(shop_domain, webhook, customerEmail )
    shop = Shop.find_by(shopify_domain: shop_domain)
    @customer_reward_point = RewardPoint.create!(customer_id: webhook, earned: 5000, used: 0, expired: 500)
    if @customer_reward_point.save!
      CustomerMailer.customer_information(shop_domain, webhook, customerEmail).deliver_later
    end
  end



end
