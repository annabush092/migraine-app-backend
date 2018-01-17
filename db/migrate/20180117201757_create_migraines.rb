class CreateMigraines < ActiveRecord::Migration[5.1]
  def change
    create_table :migraines do |t|
      t.integer :severity
      t.datetime :start

      t.integer :user_id

      t.timestamps
    end
  end
end
