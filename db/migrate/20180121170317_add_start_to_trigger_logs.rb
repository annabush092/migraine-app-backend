class AddStartToTriggerLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :trigger_logs, :start, :datetime
  end
end
