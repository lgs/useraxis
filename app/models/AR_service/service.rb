class Service < ActiveRecord::Base
  attr_reader :selector

  def initialize(selector)
    @selector = selector
  end

  def to_param
    @selector
  end

  def self.list 
    ['lastfm','delicious','friendfeed','twitter','linkedin'].map { |s| new(s) }
  end

end
