@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states.merge! ({MA: "Massachuesettes", NJ: "New Jersey"})

@cities = {
 OR: ['Portland', 'Oregon City'],
 FL: ['Tampa Bay', 'Miami', 'Fort Lauderdale'],
 CA: ['Los Angeles', 'San Francisco', 'San Jose'],
 NY: ['New York', 'Buffalo'],
 MI: ['Detroit', 'Flint'],
 MA: ['bontson', 'cambridge'],
 NJ: ['Jersey City', 'Newark']
}

@tax = {
 OR: 8.3,
 FL: 4,
 CA: 9,
 NY: 6,
 MI: 8,
 MA: 7,
 NJ: 6
}

def describe_state(code)
  state_code = code.to_sym
  full_name = @states[state_code]
  city = @cities[state_code]
  tax = @tax[state_code]
  p "#{code} stands for #{full_name}"
  p "a few cities in #{code} are: #{city.join(", ")}"
end

def calculate_tax(code, ammount)
  state_code = code.to_sym
  full_name = @states[state_code]
  city = @cities[state_code]
  tax = @tax[state_code]
  total = (ammount * (tax * 0.01)) + ammount

  p "The total including tax in #{full_name} for #{ammount.round(2)} is #{total.round(2)}"
end

def find_state_for_city(city)
  @cities.each do |k, v|
    if v.include?(city)
      return k
    end
  end
end



p find_state_for_city('Portland')
