# == Schema Information
#
# Table name: prompts
#
#  id         :integer          not null, primary key
#  difficulty :integer
#  created_at :datetime
#  updated_at :datetime
#

class Prompt < ActiveRecord::Base
  has_many :doodles
end
