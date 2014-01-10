class CreateDynamicContents < ActiveRecord::Migration
  def change
    create_table :dynamic_contents do |t|
      t.string :key
      t.text :value

    end
    add_index :dynamic_contents, :key, :unique => true
  end
end
