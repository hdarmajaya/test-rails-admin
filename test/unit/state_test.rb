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

require 'test_helper'

class StateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
