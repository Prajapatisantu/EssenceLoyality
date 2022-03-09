class RewardpointsController < AuthenticatedController

  def index
    @rewardPoints = RewardPoint.all
  end
  
  def customer_list
    @customers = ShopifyAPI::Customer.find(:all)
    # render(json: { customers: @customers })
  end
end
