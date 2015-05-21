class SorceryCore < ActiveRecord::Migration
  def change
    create_table :coders do |t|
      t.string :username, :null => false
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :coders, :email, unique: true
  end
end