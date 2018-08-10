class CityMailer < ActionMailer::Base

  add_template_helper(CitiesHelper)

  default from: "noureddine.brahmi@gmail.com"

  def order_send(order, client)
    @order = order
    @client = client
    mail(to: "noureddine.brahmi@gmail.com", subject: "Your subject")
  end
end