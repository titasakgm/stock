class Quote
  include Mongoid::Document
  field :date, :type => String
  field :time, :type => String
  field :symbol, :type => String
  field :close, :type => Float
  field :change, :type => Float
  field :perc_change, :type => Float
  field :volume, :type => Integer
  field :value, :type => Integer
end
