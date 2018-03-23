class Student < ActiveRecord::Base
  validates :name, allow_nil: false, presence: true
end
