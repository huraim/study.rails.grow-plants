class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.text :title
      t.integer :step
      t.timestamps
    end
  end
end
