class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.references :user, index: true, foreign_key: true
      t.date :date_of_birth
      t.string :gender
      t.string :mobile
      t.text :address

      t.timestamps null: false
    end
  end
end
