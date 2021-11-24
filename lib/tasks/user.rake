namespace :user do
  desc "Send order confirmation to user"
  task notify_all: :environment do
    notifications = Order.where(state: 'completed')
    notifications.each do |notification|
      SendWhatsapp.new(notification.user, "Hello Amina").call
    end
  end
end
