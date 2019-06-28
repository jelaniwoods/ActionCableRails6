class Message < ApplicationRecord
  belongs_to :enrollment
  belongs_to :resource
end
