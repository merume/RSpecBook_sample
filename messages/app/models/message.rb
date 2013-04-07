class Message < ActiveRecord::Base
  attr_accessible :title, :text :recipient
  belongs_to :recipient, :class_name => "User"

  validates_presence_of :title, :text, :recipient
end
