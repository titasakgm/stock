class ChartController < ApplicationController
  def draw
    @symbol = params[:id]
    @date = params[:date]
    @time = params[:time]
    if @date and @time
      @setcloses = Setclose.where('date' => @date,'symbol' => @symbol).order(['date',1],['time',1])
      @quotes = Quote.where('symbol' => @symbol).order(['date',1],['time',1])
    else
      @setcloses = Setclose.all.order(['date',1],['time',1])
      @quotes = Quote.where('symbol' => @symbol).order(['date',1],['time',1])
    end
  end
end
