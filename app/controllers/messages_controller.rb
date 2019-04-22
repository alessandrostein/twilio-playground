class MessagesController < ApplicationController

    def index
        @recipient = Contact.find(params[:id])
        @messages = current_contact.sent_messages.where(recipient_id: @recipient)
    end

    def show
        @message = current_contact.sent_messages.find(params[:id])        
        respond_with(@message)
    end

    def new
        @message = current_contact.sent_messages.new(recipient_id: params[:recipient_id])
        respond_with(@message)
    end
    
    def create
        @message = current_contact.sent_messages.create(message_params)
        respond_with(@message)
    end

    private

    def message_params
        params.require(:message).permit(:recipient_id, :text)
    end
end