# This migration comes from archangel (originally 20170205221311)
class CreateArchangelMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :archangel_menus do |t|
      t.string :name
      t.string :slug
      t.string :attr_id
      t.string :attr_class
      t.string :selected_class
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :archangel_menus, :deleted_at
    add_index :archangel_menus, :name
    add_index :archangel_menus, :slug, unique: true
  end
end
