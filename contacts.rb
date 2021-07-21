require 'pry'

def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  contacts.each do |person, info_hash|
    if person == "Freddy Mercury"
    info_hash.each do |attribute, value|
      if attribute == :favorite_ice_cream_flavors
        value.delete_if{|flavor| flavor == "strawberry"}
        end
      end
    end
  end
end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
