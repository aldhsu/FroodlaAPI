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

class Doodle < ActiveRecord::Base
  belongs_to :prompt
  belongs_to :user
  has_many :ratings
end
