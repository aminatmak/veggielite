require 'twilio-ruby'

class SendWhatsapp
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def call
    account_sid = 'AC67f4ba7fe89cd9c0581849309594e472'
    auth_token = '7d366e2d9f60ce709fdeb5fbbc79cc60'

    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.messages.create(
      body: "Hi #{@user.first_name} 👋🏼, Thank You for ordering via Veggielite!\n
      We’ve received your order ##{@user.orders.last.id}! \n
      We will contact you as soon as your ** healthy products ** are shipped to #{@user.address}.\n
      We hope you enjoyed shopping with us!🍓",
      from: 'whatsapp:+14155238886',
      to: 'whatsapp:+77077924000'
    )

    puts message.sid
  end
end
