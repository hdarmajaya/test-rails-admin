# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  population :integer
#  state_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base
  attr_accessible :name, :population, :state_id

  validates :name, presence: true, length: { maximum: 25 }
  validates :state_id, presence: true
  validates :name, :uniqueness => { :scope => :state_id }

  belongs_to :state
end
