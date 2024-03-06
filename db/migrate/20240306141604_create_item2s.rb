class CreateItem2s < ActiveRecord::Migration[7.1]
  def change
    create_table :item2s do |t|
      t.string :title

      t.timestamps
    end
  end
end
