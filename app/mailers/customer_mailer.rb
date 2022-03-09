class CustomerMailer < ApplicationMailer

  def customer_information(shop_domain, webhook, customerEmail)
    @shop = shop_domain
    @uid = webhook  
    mail(to: customerEmail, subject: "Registeration successfully with shop #{@shop}") do |format|
      format.html{ render "customer_information"}
    end
  end
end
