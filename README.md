# now

Show current weather conditions via [forecast.io](http://forecast.io).


## Setup

Download or clone and use `npm install -g` to install dependencies and the
`now` command-line utility.

Then specify your [forecast.io api key](https://developer.forecast.io/) and location (lat/lon) coordinates in `config.json` and you should be good to go.


## Usage

    > now 
    time: 1378231463,
    summary: 'Clear',
    icon: 'clear-day',
    precipIntensity: 0,
    precipProbability: 0,
    temperature: 82.3,
    apparentTemperature: 84.07,
    dewPoint: 64.92,
    windSpeed: 9.07,
    windBearing: 357,
    cloudCover: 0.19,
    humidity: 0.56,
    pressure: 1005.71,
    visibility: 10,
    ozone: 291.68

    > now temperature humidity
    temperature: 84.24
    humidity: 0.49
