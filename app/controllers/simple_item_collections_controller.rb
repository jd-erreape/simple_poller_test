class SimpleItemCollectionsController < ApplicationController

  def show
    simple_item_collection
  end

  def add_item
    simple_item_collection.simple_items.create(
        :title => "Simple Item #{simple_item_collection.simple_items.length+1}",
        :body => "Simple Item Body #{simple_item_collection.simple_items.length+1}"
    )
    render :nothing => true
  end

  def remove_item
    simple_item_collection.simple_items.last.destroy
    render :nothing => true
  end

  def poll
    render :json => simple_item_collection.to_json(:include => :simple_items)
  end

  private

  def simple_item_collection
    @simple_item_collection ||= SimpleItemCollection.includes(:simple_items).first
  end

end