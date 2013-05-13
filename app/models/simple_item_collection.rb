class SimpleItemCollection < ActiveRecord::Base
  has_many :simple_items, :dependent => :destroy
end
