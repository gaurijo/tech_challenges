class Animal 
  attr_reader :name, :description, :arrival 
  def initialize(name, description, arrival)
    @name = name 
    @description = description 
    @arrival = arrival 
  end
end

class Dog < Animal 
  attr_reader :favorites 
  def initialize(name, description, arrival, favorites)
    super(name, description, arrival)
    @favorites = favorites
  end
end

class Cat < Animal 
  attr_reader :favorite_food, :likes_dogs 
  def initialize(name, description, arrival, favorite_food, likes_dogs)
    super(name, description, arrival)
    @favorite_food = favorite_food 
    @likes_dogs = likes_dogs
  end

  def add_foods(food)
    @favorite_food << food 
  end
end

class Guinea < Animal 
  attr_reader :siblings 
  def initialize(name, description, arrival, siblings)
    super(name, description, arrival)
    @siblings = siblings
  end
end

# Test Cases (Dog)
buster = Dog.new("Buster", "Greyhound", "01/01/2023", [])
max = Dog.new("Max", "Terrier", "01/01/2023", [])
dog = Dog.new("Rex", "Golden Retriever", "01/01/2023", [buster, max])

expect(dog.favorites).to eq([buster, max])

# Test Cases (Cat)
luna = Cat.new("Luna", "Orange", "01/01/2023", ["tuna"], likes_dogs = false)
luna.add_foods('chicken')

expect(luna.favorite_food).to eq(["tuna", "chicken"])

# Test Cases (Guinea)
billy = Guinea.new("Billy", "dwarf guinea pig", "01/01/2023", ["Biggy", "Bob"])
biggy = Guinea.new("Biggy", "grey guinea pig", "01/01/2023", ["Billy", "Bob"])
bob = Guinea.new("Bob", "black guinea pig", "01/01/2023", ["Billy", "Biggy"])

expect(billy.siblings).to eq(["Biggy", "Bob"])
# require 'pry'; binding.pry 