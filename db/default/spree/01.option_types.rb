### This is the data
option_types = [
  {:name => "start_date", :presentation => "Start Date", :attr_type => 'date', :short => 'Start'},
  {:name => "end_date", :presentation => "End Date", :attr_type => 'date', :short => 'End'},
  {:name => "apartment_type", :presentation => "Apartment Type", :attr_type => 'selection', :short => 'Apartment Type'},
  {:name => "persons", :presentation => "Persons", :attr_type => 'integer', :short => 'Persons'},
  {:name => "price_per_person", :presentation => "Price per person", :attr_type => 'float', :short => 'Price/person'},
  {:name => "destination", :presentation => "Destination", :attr_type => 'destination', :short => 'Dest'},
]

### Creating Option Types
option_types.each do |ot|
  Spree::OptionType.where(:name => ot[:name]).first_or_create(:presentation => ot[:presentation], :attr_type => ot[:attr_type])
end

### Creating Destination Taxonomy
Spree::Taxonomy.first_or_create( :name => "Destination")

