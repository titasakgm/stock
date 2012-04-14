class Analyse
  include Mongoid::Document
  field :date, :type => String
  field :time, :type => String
  field :symbol, :type => String
  field :perc_volume, :type => Float
end
