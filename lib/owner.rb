require "pry"
class Owner
  # code goes here
  @@all = []

  attr_accessor :name, :pets

  def initialize(name)
  	@name = name
  	@pets = {:fishes => [], :dogs => [], :cats => []}
  	@@all << self
  end

  def self.all
  	@@all
  end

  def self.reset_all
  	@@all = []
  end

  def self.count
  	@@all.length
  end

  def species
  	@species = "human"
  end

  def say_species
  	"I am a #{self.species}."
  end

  def pets
  	@pets 
  end

  def buy_fish(name)
  	fish = Fish.new(name)
  	self.pets[:fishes] << fish
  end

  def buy_cat(name)
  	cat = Cat.new(name)
  	self.pets[:cats] << cat
  end

  def buy_dog(name)
  	dog = Dog.new(name)
  	self.pets[:dogs] << dog
  end

  def walk_dogs
  	self.pets[:dogs].map do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	self.pets[:cats].map do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	self.pets[:fishes].map do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	self.pets.map do |type, pets|
  		pets.each do |pet|
  			pet.mood = "nervous"
  		end
  	end
  	@pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
  	"I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end