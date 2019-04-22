class Message < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'Contact'
    belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'Contact'

    scope :between, -> (sender, recipient) {        
        where(
            "(messages.sender_id = #{sender} and messages.recipient_id = #{recipient})" +
            " or " +
            "(messages.sender_id = #{recipient} and messages.recipient_id = #{sender})"
        )
    }
end