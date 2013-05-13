class CreateSimpleItemCollections < ActiveRecord::Migration
  def change
    create_table :simple_item_collections do |t|

      t.timestamps
    end
  end
end
