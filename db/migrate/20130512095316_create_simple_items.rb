class CreateSimpleItems < ActiveRecord::Migration
  def change
    create_table :simple_items do |t|
      t.text :title
      t.text :body
      t.references :simple_item_collections

      t.timestamps
    end
    add_index :simple_items, :simple_item_collection_id
  end
end
