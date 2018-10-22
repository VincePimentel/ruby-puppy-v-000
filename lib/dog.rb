class Dog
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << name if !@@all.include?(name)
  end

  def self.all
    @@all.each { |name| puts "#{name}" }
  end

  def self.clear_all
    @@all.clear
  end
end
