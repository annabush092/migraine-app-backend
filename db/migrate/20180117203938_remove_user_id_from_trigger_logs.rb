class RemoveUserIdFromTriggerLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :trigger_logs, :user_id
  end
end
