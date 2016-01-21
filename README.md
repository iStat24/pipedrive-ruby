# pipedrive-ruby

## Installation

    Add to Gemfile:

    gem "pipedrive-ruby", :git => "git@github.com:nononoy/pipedrive-ruby.git"

## Usage
    Pipedrive.authenticate( YOUR_API_TOKEN ) - not available, only dynamic api_token per call

    require 'pipedrive-ruby'
    Pipedrive::Deal.find(DEAL_ID, api_token: API_TOKEN )

## API Calls
    Pipedrive::Deal.create( params, api_token: API_TOKEN )
    Pipedrive::Deal.find( ID, api_token: API_TOKEN )
    Pipedrive::Deal.find_by_name( NAME, api_token: API_TOKEN )

    Pipedrive::Organization.create( params, api_token: API_TOKEN )
    Pipedrive::Organization.find( ID )

    Pipedrive::Person.create( params, api_token: API_TOKEN )
    Pipedrive::Person.find( ID )

    Pipedrive::Note.create( params, api_token: API_TOKEN )

You can check some of the calls at https://developers.pipedrive.com/v1

## License

This gem is released under the [MIT License](http://www.opensource.org/licenses/MIT).
