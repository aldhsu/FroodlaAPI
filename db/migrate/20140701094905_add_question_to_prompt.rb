class AddQuestionToPrompt < ActiveRecord::Migration
  def change
    add_column :prompts, :question, :string
  end
end
