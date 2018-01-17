class CreateTriggerLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :trigger_logs do |t|

      t.integer :user_id
      t.integer :trigger_id

      t.timestamps
    end
  end
end
