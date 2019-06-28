class Context < ApplicationRecord
  has_many :enrollments, :dependent => :destroy
  has_many :resources, :dependent => :destroy
end
