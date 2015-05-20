class AddDateWorkedToMilestones < ActiveRecord::Migration
  def change
    add_column :milestones, :date_worked, :date
  end
end
