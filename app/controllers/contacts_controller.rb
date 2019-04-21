class ContactsController < ApplicationController
    before_action :load_contact, only: %i[show edit update]

    def index
        @contacts = Contact.all
        respond_with(@contacts)
    end

    def show
        respond_with(@contact)
    end

    def new
        @contact = Contact.new
        respond_with(@contact)
    end

    def edit
        respond_with(@contact)
    end

    def create
        @contact = Contact.create(contact_params)
        respond_with(@contact)
    end

    def update
        @contact.update(contact_params)
        respond_with(@contact)
    end

    private

    def contact_params
        params.require(:contact).permit(:name, :phone)
    end

    def load_contact
        @contact = Contact.find(params[:id])
    end

end