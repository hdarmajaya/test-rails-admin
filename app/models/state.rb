# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  abbrev     :string(255)
#  name       :string(255)
#  population :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class State < ActiveRecord::Base
  attr_accessible :abbrev, :name, :population

  validates :abbrev, presence: true, length: { maximum: 2 },
                     uniqueness: { case_sensitive: false }
  validates :name, presence: true, length:  {maximum: 25 },
                     uniqueness: { case_sensitive: false }

  has_many :cities, dependent: :destroy
end
