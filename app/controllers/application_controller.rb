class ApplicationController < ActionController::Base
    respond_to :html

    private

    include CurrentContact
end
