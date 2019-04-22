module CurrentContact
    extend ActiveSupport::Concern

    included do

        private

        def current_contact
            @current_contact ||= Contact.first
        end

        helper_method :current_contact
    end

end