class Message < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'Contact'
    belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'Contact'    
end