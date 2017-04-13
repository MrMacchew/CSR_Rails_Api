class CreateComputers < ActiveRecord::Migration[5.0]
  def change
    create_table :computers do |t|
      t.string :name
      t.boolean :idf
      t.boolean :scep
      t.boolean :lab
      t.string :os
      t.string :college

      t.timestamps
    end
  end
end
