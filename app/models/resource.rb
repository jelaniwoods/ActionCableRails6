class Resource < ApplicationRecord
  has_many :recieved_messages, :class_name => "Message", :dependent => :destroy
  belongs_to :context
end
