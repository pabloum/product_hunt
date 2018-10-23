class UserMailer < ApplicationMailer
  def daily_products
    @user = user
    @products = products
    mail(to: @user.email, subject: "Top products from last day")
  end
end
