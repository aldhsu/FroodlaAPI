# == Schema Information
#
# Table name: doodles
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  prompt_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

require 'test_helper'

class DoodleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
