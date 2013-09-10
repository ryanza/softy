# Softy

Softy is a soft delete gem which allows safe deletion of ActiveRecord objects.

## Installation

Add this line to your application's Gemfile:

    gem 'softy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install softy

## Usage

Run the rake task to generate the softy migration:

    $ rails g softy:migration MODEL_NAME
    
Include softy in the model you plan on using it in:

    class Model; include Softy; end
    
Thats all you need to get up and running. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
