class AddSortToMenus < ActiveRecord::Migration
  def self.up
    add_column :menus, :sort_number, :integer
  end

  def self.down
    remove_column :menus, :sort_number
  end
end
