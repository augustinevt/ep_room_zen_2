# RoomZen

## Description
  This app is here to allow you to search for a room in a stress free way

## Specs
  * rails version 5.0.0.1
  * Rspec/Capybara/Polpoltergeist
    * please make sure you have phantom.js installed on your machine
  * Postgresql


## Setup
  * run `git clone https://github.com/augustinevt/ep_room_zen_2.git`
  * run `postgres` in a separate terminal window
  * run `bundle install`
  * run `rake db:create`
  * run `rake db:migrate`
  * run `rake db:seed`
  * run `rake db:test:prepare`

  * create an .env file in to root directory
    * please include the proper api credentials in this .env file in the following format, replacing the placeholders with your actual information. If you are unsure how to aquire keys and secrets please refer to the subsequent documentation.
    ```
    GOOGLE_MAPS_KEY=<google_maps_key>
    GOOGLE_OAUTH2_KEY=<google_api_key>
    GOOGLE_OAUTH2_SECRET=<google_api_secret>
    FACEBOOK_OAUTH_KEY=<faceook_api_key>
    FACEBOOK_OAUTH_SECRET=<facebook_api_key>
    ```
    ###### [google maps](https://developers.google.com/maps/documentation/javascript/get-api-key)
    ###### [google oauth2](https://developers.google.com/+/web/api/rest/oauth)
    ###### [facebook oauth2](https://developers.facebook.com/products/login)

    
  * run `rails s`
  * navigate to http://localhost:3000
  * Explore!


## Issues
  There are no known bugs in this version

## Contact
  Please contact me at augustvontrapp@gmail.com

## License

  Copyright (c) 2016 August von Trapp
