class AddDateWrittenToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :date_written, :date
  end
end
