Spree Travel Apartment
=========
Spree Travel Apartment is intended to be a part of [Spree Travel](https://github.com/openjaf/spree_travel/), providing spree e-commerce platform with the essential functionalities to behave as a travel agency management platform. This means that this spree extension will add new models, behaviors, views, etc… to spree, and will modify some of the definition it holds.

###Important Note
The Spree Travel project is a work in progress, and will suffer major changes. Please use it and keep a live feedback with the team by opening a [GitHub issue](https://github.com/openjaf/spree_travel_apartment/issues/new).

Requirements
------------
### Rails and Spree
Spree Travel Apartment now requires Rails version **>= 4.0** and a Spree version **>=2.3**.
### Spree Travel Core
Spree Travel Apartment now requires a [Spree Travel Core](https://github.com/openjaf/spree_travel_core) version **>=2.3**.

Installation
------------

Spree Travel Apartment is not yet distributed as a gem, so it should be used in your app with a git reference or you can download the source and build the gem on your own.

1. Add the following to your Gemfile

  ```ruby
    gem 'spree_travel_apartment’, :github => 'openjaf/spree_travel_apartment', :branch => '3-0-stable'
  ```

2. Run `bundle install`

3. To copy and apply migrations run:

  ```
  rails g spree_travel_apartment:install
  ```
4. Run `rake spree_travel_apartment:load`

Features
------------

- Using the product_types logic introduced by **Spree Travel Core**, defines a new type of product to encapsulate the common properties of apartments.
- Adds a new **Calculator**, to get apartment prices according to the time of the year, haw many persons are on the reservation, etc...
- Adds option types and option values to model apartment rates and variants.
- Adds stars to apartment products details view.

Contributing
------------

If you'd like to contribute a feature or bugfix: Thanks! To make sure your
fix/feature has a high chance of being included, please read the following
guidelines:

1. Post a [pull request](https://github.com/openjaf/spree_travel_apartment/compare/).
2. Or open a [GitHub issue](https://github.com/openjaf/spree_travel_apartment/issues/new).

License
-------
Copyright © 2013 OpenJAF, released under the New BSD License.
