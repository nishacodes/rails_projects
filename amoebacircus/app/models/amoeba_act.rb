class Amoeba_Act < ActiveRecord::Base
  attr_accessible :amoeba_id, :act_id

  belongs_to :amoeba
  belongs_to :act
end