# == Schema Information
#
# Table name: prompts
#
#  id         :integer          not null, primary key
#  difficulty :integer
#  created_at :datetime
#  updated_at :datetime
#  question   :string(255)
#

require 'test_helper'

class PromptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
