require 'pry'

zoos = {
    "Bronx Zoo" => {
        location: "Bronx",
        price: 25,
        weekend: true,
        animals: [
            {
                species: "Penguin",
                count: 2
            },
            {
                species: "Butterfly",
                count: 12
            },
            {
                species: "Tiger",
                count: 3
            }
        ]
    },
    "Central Park Zoo" =>  {
        location: "Manhattan",
        price: 18,
        weekend: true,
        animals: [
            {
                species: "Tiger",
                count: 1
            },
            {
                species: "Monkey",
                count: 7
            }
        ]
    },
    "Staten Island Zoo" => {
        location: "Staten Island",
        price: 10,
        weekend: false,
        animals: [
            {
                species: "Gorilla",
                count: 3
            },
            {
                species: "Monkey",
                count: 4
            },
            {
                species: "Elephant",
                count: 2
            },
            {
                species: "Bird",
                count: 6
            }
        ]
    }
}

# Central Park Zoo has just received 4 wolves. Alter the `zoos` information to reflect this new change:
# Put this hash: { species: "Wolf", count: 4 } in the array under the `:animals` key in Central Park Zoo
zoos["Central Park Zoo"][:animals] << {:species => "Wolf", :count => 4}


# The 2 penguins in the Bronx Zoo just had a baby. Alter the `zoos` information to reflect this new change:
# Increment the number for the `:count` key in the "Penguin" hash in the Bronx Zoo array by 1. 
# You can assume that the animal at index 0 will always be the "Penguin" hash.
zoos["Bronx Zoo"][:animals][0][:count] += 1


# Each of the zoos in the city just received 2 pandas. Alter the `zoos` information to reflect this new change:
# In the array of animals under each Zoo, shovel this hash: { species: "Panda", count: 2 }
zoos.map do |zoo, zoo_info|
    zoo_info[:animals] << {:species => "Panda", :count => 2}
end


# Return the number of Tigers at the Bronx Zoo.
# Rather than assuming that the animal at index 2 will always be the "Tiger" hash:
# First find the "Tiger" hash from the array of Animals at the Bronx Zoo and then, access the value under the ":count" key
bronx_zoo_tigers = zoos["Bronx Zoo"][:animals].find do |animal_hash|
    animal_hash[:species] == "Tiger"
end
bronx_zoo_tigers[:count]


# Generalize the process to find the ticket price of a specific zoo.
# In other words, you're given a `name_of_zoo` variable that is a string.
# Return the price associated with the `name_of_zoo` variable.
    # No matter which 1 of the 3 variable assignment you choose, your code should work:
    # name_of_zoo = "Bronx Zoo" => returns 25
    # name_of_zoo = "Central Park Zoo" => returns 18
    # name_of_zoo = "Staten Island Zoo" => returns 10
def ticket_price(zoos, name_of_zoo)
    zoo_ticket_price = nil
    zoos.each do |zoo, zoo_info|
        if zoo == name_of_zoo
            zoo_ticket_price = zoo_info[:price]
        end
    end
    zoo_ticket_price
end


# Return the sum of all the zoos' price. 
# The return value should be: 53 
zoos.sum do |zoo, zoo_info|
    zoo_info[:price]
end


# Return an array of all the locations where the zoos are located.
# The return value should be an array of strings: ["Bronx", "Manhattan", "Staten Island"]
# Consider which higher-level enumerable method(s) you'd use here.
zoos.map do |zoo, zoo_info|
    zoo_info[:location]
end


# Find all the zoos that are open on the weekend. 
# The return value should be a hash with two keys: ["Bronx Zoo", "Central Park Zoo"]
# Consider which higher-level enumerable method(s) you'd use here.
zoos.select do |zoo, zoo_info|
    zoo_info[:weekend]
end


# Find the first zoo that are open on the weekend AND has the price under 20 dollars.
# The return value should be an array with two elements: ["Central Park Zoo", { location: "Manhattan", ... }]
# Consider which higher-level enumerable method(s) you'd use here.
zoos.find do |zoo, zoo_info|
    zoo_info[:weekend] && zoo_info[:price] < 20
end




# Find all the zoos where there are monkeys.
# The return value should be a hash with two keys: ["Central Park Zoo", "Staten Island Zoo"]
# Consider which higher-level enumerable method(s) you'd use here.
zoos.select do |zoo, zoo_info|
    zoo_info[:animals].find do |animal|
        animal[:species] == "Monkey"
    end
end


# Return an array of 3 numbers, each describing the total sum of the number of animals in a zoo.
# The return value should be an array of 3 numbers: [20, 14, 17]
# Consider which higher-level enumerable method(s) you'd use here.
zoos.map do |zoo, zoo_info|
    zoo_info[:animals].sum do |animal_hash|
        animal_hash[:count]
    end
end



# Find the zoo with the highest count of any species in it. (Butterflies with the 12 count is the highest)
# The return value should be an array with two elements: ["Bronx Zoo", { location: "Bronx", ... }]
# Consider which higher-level enumerable method(s) you'd use here.
bronx_zoo = zoos.find do |zoo, zoo_info|
    zoo_info[:animals].max_by do |animal_hash|
        animal_hash[:count]
    end
end


binding.pry
0
