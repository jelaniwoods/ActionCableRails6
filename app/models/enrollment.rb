class Enrollment < ApplicationRecord
  belongs_to :user
  has_many :sent_messages, :class_name => "Message", :dependent => :destroy
  belongs_to :context
end
