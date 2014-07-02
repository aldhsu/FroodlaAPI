class AddGpIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gpid, :string
  end
end
