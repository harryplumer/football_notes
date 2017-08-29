class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :week
      t.text :body
      t.belongs_to :school, foreign_key: true

      t.timestamps
    end
  end
end
