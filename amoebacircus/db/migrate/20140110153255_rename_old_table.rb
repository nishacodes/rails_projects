class RenameOldTable < ActiveRecord::Migration
  def self.up
      rename_table :amoebaacts, :amoeba_acts
  end
  def self.down
      rename_table :amoeba_acts, :amoebaacts
  end
end
