class AmoebaActs < ActiveRecord::Migration
def change
    create_table :amoebaacts do |t|
      t.integer :amoeba_id
      t.integer :act_id

      t.timestamps
    end
  end
end
