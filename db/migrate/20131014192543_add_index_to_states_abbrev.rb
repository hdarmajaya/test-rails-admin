class AddIndexToStatesAbbrev < ActiveRecord::Migration
  def change
    add_index :states, :abbrev, unique: true
  end
end
