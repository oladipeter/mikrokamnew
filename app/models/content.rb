class Content < ActiveRecord::Base
  has_one :menu
  has_one :info
  has_many :tabs, :through => :info
end
