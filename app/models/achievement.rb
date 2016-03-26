#
class Achievement < ActiveRecord::Base
  validates_presence_of [:title, :description, :privacy]
  enum privacy: %w(everyone hidden friends)
end
