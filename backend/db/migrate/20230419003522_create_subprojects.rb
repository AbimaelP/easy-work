class CreateSubprojects < ActiveRecord::Migration[7.0]
  def change
    create_table :subprojects do |t|
      t.string :title, null:false
      t.text :details
      t.references :projects, null: false, foreign_key: true

      t.timestamps
    end
  end
end
