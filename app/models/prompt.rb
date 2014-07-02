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

class Prompt < ActiveRecord::Base
  has_many :doodles
end
