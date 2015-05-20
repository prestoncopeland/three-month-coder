class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.date :date
      t.string :time
      t.float :hours
      t.string :activity

      t.timestamps null: false
    end
  end
end
