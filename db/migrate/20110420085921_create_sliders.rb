class CreateSliders < ActiveRecord::Migration
  def self.up
    create_table :sliders do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :sliders
  end
end
