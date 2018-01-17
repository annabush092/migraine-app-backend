class CreateTriggerLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :trigger_logs do |t|
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
