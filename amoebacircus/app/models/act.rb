class Act < ActiveRecord::Base
  attr_accessible :date, :name, :time

  has_many :amoebas, :through => :amoebaacts
end
