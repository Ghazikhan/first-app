class CreateDegres < ActiveRecord::Migration
  def change
    create_table :degres do |t|
      t.string :name
      t.string :drege_type

      t.timestamps null: false
    end
  end
end
