class Service 

  attr_reader :s_name

  def self.all
    ['lastfm', 'delicious', 'twitter'].map { |s| new(s) }
    #['http://friendfeed.com/', 'http://www.linkedin.com/in/', 'http://www.lastfm.it/user/', 'http://delicious.com/', 'http://twitter.com/']
  end

  def self.find(param)
    all.detect { |l| l.to_param == param } || raise(ActiveRecord::RecordNotFound)
  end

  def initialize(s_name)
    @s_name = s_name
  end

  def to_param
    @s_name
  end

end
