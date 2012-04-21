class ApplicationController < ActionController::Base
  protect_from_forgery

  def today
    d = Time.now
    yy = d.year
    mm = sprintf("%02d", d.mon)
    dd = sprintf("%02d", d.day)
    date = "#{yy}#{mm}#{dd}"
   end
end
