class AddDurationToTriggerLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :trigger_logs, :duration, :float
  end
end
