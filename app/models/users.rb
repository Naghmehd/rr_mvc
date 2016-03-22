require 'json'

class Users
  attr_accessor :first_name, :last_name, :age, :id

  def initialize(first_name, last_name, age, id)
      @first_name = first_name
      @last_name = last_name
      @age = age
      @id = id
  end

@users = [
  {"first_name" => "Justin", "last_name" => "Herrick", "age" => 12, "id" => 1},
  {"first_name" => "Rohit",  "last_name" => "Prabu",   "age" => 18,  "id" => 2},
  {"first_name" => "Lily",   "last_name" => "Smith",   "age" => 24, "id" => 3},
  {"first_name" => "Cameron","last_name" => "Black",   "age" => 28, "id" => 4},
  {"first_name" => "Andrea" ,"last_name" => "Logan",   "age" => 34, "id" => 5},
  {"first_name" => "Naghmeh","last_name" => "Shirazi", "age" => 32, "id" => 6},
  {"first_name" => "Roy",    "last_name" => "Desi",    "age" => 19, "id" => 7},
  {"first_name" => "Joy",    "last_name" => "Roger",   "age" => 25, "id" => 9},
  {"first_name" => "Cathy",  "last_name" => "white",   "age" => 38, "id" => 10},
  {"first_name" => "Sam" ,   "last_name" => "Gates",   "age" => 46, "id" => 11},
  {"first_name" => "Aaron",  "last_name" => "Scott",   "age" => 12, "id" => 12},
  {"first_name" => "Reema",  "last_name" => "Sandu",   "age" => 18, "id" => 13},
  {"first_name" => "Marry",  "last_name" => "Darby",   "age" => 24, "id" => 14},
  {"first_name" => "Chetan", "last_name" => "Rai",     "age" => 28, "id" => 15},
  {"first_name" => "Alex" ,  "last_name" => "lamba",   "age" => 34, "id" => 16},
  {"first_name" => "Nick",   "last_name" => "Jones",   "age" => 32, "id" => 17},
  {"first_name" => "Dave",   "last_name" => "Watts",   "age" => 19, "id" => 18},
  {"first_name" => "Eric",   "last_name" => "McNinch", "age" => 25, "id" => 19},
  {"first_name" => "Kim",    "last_name" => "Smallwood","age" => 38, "id" => 20},
  {"first_name" => "Lisa" ,  "last_name" => "Munter",   "age" => 46, "id" => 21},
]
end

def all
  @users
end

Users.new.all
