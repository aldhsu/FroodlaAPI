class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|
      t.string :url
      t.integer :prompt_id

      t.timestamps
    end
  end
end
