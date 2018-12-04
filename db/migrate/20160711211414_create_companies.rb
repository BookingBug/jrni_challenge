class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :email
      t.text :description
      t.boolean :disabled
      t.timestamps null: false
    end
  end
end
