class TwilioNotifier

    def notify(to, text)
        client.messages.create(from: ENV['TWILIO_ACCOUNT_PHONE'], to: to, body: text)
    end

    private

    def client
        Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_ID'], ENV['TWILIO_ACCOUNT_TOKEN'])
    end
end