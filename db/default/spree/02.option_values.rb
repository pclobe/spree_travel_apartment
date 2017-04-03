### These are the option types
apartment_type = Spree::OptionType.find_by_name!("apartment_type")

### This is the data
option_values = [
  {:name => "standard", :presentation => "Standard", :option_type => apartment_type}
]

### Creating Option Values
option_values.each do |ov|
  Spree::OptionValue.create(ov)
end
