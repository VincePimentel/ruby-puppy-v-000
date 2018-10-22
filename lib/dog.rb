class Dog
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    self.each { |name| puts "#{name}" }
  end

  def self.clear_all
    @@all.clear
  end
end
