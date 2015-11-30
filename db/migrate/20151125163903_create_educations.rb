class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :division
      t.string :obtained_marks
      t.date :pass_year
      t.references :user, index: true, foreign_key: true
      t.references :degre, index: true, foreign_key: true
      t.references :institute, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
