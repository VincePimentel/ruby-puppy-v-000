class Dog
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self if !@@all.include?(name)
  end

  def self.all
    @@all.each do |name|
      puts "#{name}"
    end
  end

  def self.clear_all
    @@all.clear
  end
end
