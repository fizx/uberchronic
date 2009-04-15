require "rubygems"
require "chronic"
require File.dirname(__FILE__) + "/../ext/get_date"
require "time"

module Uberchronic
  def self.parse(str)
    if stamp = GetDate.parse(str)
      puts stamp.inspect
      return Time.at(stamp)
    else
      return Chronic.parse(str)
    end
  end
end
  