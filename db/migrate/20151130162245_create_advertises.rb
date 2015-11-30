class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :picture
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
