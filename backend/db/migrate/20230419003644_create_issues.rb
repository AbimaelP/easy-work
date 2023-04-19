class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :cod, null: false
      t.text :details
      t.references :subprojects, null: false, foreign_key: true

      t.timestamps
    end
  end
end
