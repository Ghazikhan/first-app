class CreateWorkFields < ActiveRecord::Migration
  def change
    create_table :work_fields do |t|
      t.string :field_name

      t.timestamps null: false
    end
  end
end
