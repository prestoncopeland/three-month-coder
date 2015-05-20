class RemoveDateFromMilestones < ActiveRecord::Migration
  def change
    remove_column :milestones, :date, :date
  end
end
