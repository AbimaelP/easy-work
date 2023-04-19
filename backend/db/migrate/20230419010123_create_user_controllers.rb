class CreateUserControllers < ActiveRecord::Migration[7.0]
  def change
    create_table :user_controllers do |t|

      t.timestamps
    end
  end
end
