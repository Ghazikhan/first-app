class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :description
      t.references :advertise, index: true, foreign_key: true
      t.references :work_field, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true
      t.references :degre, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
