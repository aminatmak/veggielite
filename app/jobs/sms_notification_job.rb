class SmsNotificationJob < ApplicationJob
  queue_as :default

  def perform(user)
    SendWhatsapp.new(user).call
  end
end
