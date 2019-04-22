class TwilioNotifier

    DEFAULT_FROM = "+16264653165"
    
    def notify(to, text)
        client.messages.create(from: DEFAULT_FROM, to: to, body: text)
    end

    private

    def client
        Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_ID'], ENV['TWILIO_ACCOUNT_TOKEN'])
    end
end