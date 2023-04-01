class CreateGroup < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: ""
      t.string :icon, null: false, default: ""
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
