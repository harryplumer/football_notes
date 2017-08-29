class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :full_name, null: false
      t.string :abbreviation, null: false

      t.timestamps
    end
  end
end
