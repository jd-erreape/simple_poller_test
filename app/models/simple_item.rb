class SimpleItem < ActiveRecord::Base
  belongs_to :simple_item_collection
  attr_accessible :body, :title
end
