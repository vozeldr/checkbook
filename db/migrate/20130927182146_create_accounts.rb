class CreateAccounts < ActiveRecord::Migration
  def change
    drop_table :accounts
    create_table :accounts do |t|
      t.string :title
      t.references :user

      t.timestamps
    end
    add_index :accounts, :user_id
  end
end
