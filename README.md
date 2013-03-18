# Diversion

Diversion provides a simple routing DSL for versioned APIs. It is essentially a wrapper
for the method described in [this Railscast](http://railscasts.com/episodes/350-rest-api-versioning)

## Installation

Add this line to your application's Gemfile:

    gem 'diversion'

And then execute:

    $ bundle

## Usage

Specify the version of your API using the `version` method:

    namespace :api, defaults: { format: 'json' } do
      version 1, default: true do
        resources :users
      end
    end

TODO: Write readme for customizing vendor name and how to provide version in header