class Setclose
  include Mongoid::Document
  field :date, :type => String
  field :time, :type => String
  field :close, :type => Float
  field :volume, :type => Integer
  field :value, :type => Integer
end
