class Message < ApplicationRecord
  belongs_to :enrollment
  belongs_to :resource

  def username
    enrollment.user.email.gsub(/@.*/, "")
  end
end
