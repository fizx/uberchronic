require "rubygems"
require "chronic"
require File.dirname(__FILE__) + "/../ext/get_date"
require "time"

module Uberchronic
  def self.parse(str, *args)
    if time = Chronic.parse(str, *args)
      return time
    elsif stamp = GetDate.parse(str)
      puts stamp.inspect
      return Time.at(stamp)
    else
      return nil
    end
  end
end
  