# Now

Show current weather conditions via [forecast.io](http://forecast.io).


## Setup

1.  Download or clone.

2. Specify your [forecast.io api key](https://developer.forecast.io/) and location coordinates in `config.json`.

3. Use `npm -g install` to install dependencies and the
`now` command-line utility.


## Usage

    > now 
    time: 1378231463
    summary: 'Clear'
    icon: 'clear-day'
    precipIntensity: 0
    precipProbability: 0
    temperature: 82.3
    apparentTemperature: 84.07
    dewPoint: 64.92
    windSpeed: 9.07
    windBearing: 357
    cloudCover: 0.19
    humidity: 0.56
    pressure: 1005.71
    visibility: 10
    ozone: 291.68

    > now temperature humidity
    temperature: 84.24
    humidity: 0.49
