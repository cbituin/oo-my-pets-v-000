require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes => [], 
      :dogs => [], 
      :cats => []
      
    }
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(fishName)
    newFish = Fish.new(fishName)
    @pets[:fishes] << newFish
  end

  def buy_cat(catName)
    newCat = Cat.new(catName)
    @pets[:cats] << newCat
  end

  def buy_dog(dogName)
    newDog = Dog.new(dogName)
    @pets[:dogs] << newDog
  end
  
  def make_happy(hash)
    hash.map { |animal| animal.mood = "happy" }
  end
  
  def walk_dogs
    @pets[:dogs].map { |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy" }
  end 
  
  def feed_fish
    make_happy(@pets[:fishes])
  end
  
end