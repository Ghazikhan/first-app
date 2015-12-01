class AddFieldsToAdvertises < ActiveRecord::Migration
  def change
    add_column :advertises, :title, :string
    add_column :advertises, :description, :text
  end
end
