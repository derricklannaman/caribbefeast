# == Schema Information
#
# Table name: destinations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string(255)
#

class Destination < ActiveRecord::Base

  has_many :meals
end
