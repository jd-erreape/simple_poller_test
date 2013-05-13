if SimpleItemCollection.all.empty?
  SimpleItemCollection.create
end

if SimpleItem.all.empty?
  simple_item_collection = SimpleItemCollection.first
  simple_item_collection.simple_items.create(:title => 'Simple Item 1', :body => 'Simple Item Body 1')
  simple_item_collection.simple_items.create(:title => 'Simple Item 2', :body => 'Simple Item Body 2')
  simple_item_collection.simple_items.create(:title => 'Simple Item 3', :body => 'Simple Item Body 3')
end