class ChartController < ApplicationController
  def draw
    @symbol = params[:id]
    @setcloses = Quote.where('date' => today,'symbol' => 'SET').order(['date',1],['time',1])
    @quotes = Quote.where('date' => today, 'symbol' => @symbol).order(['date',1],['time',1])
  end
end
