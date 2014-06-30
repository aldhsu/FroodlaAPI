class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.integer :difficulty

      t.timestamps
    end
  end
end
