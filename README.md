# Now

Get current weather conditions via [forecast.io](http://forecast.io).

![Tufte](cloud.gif)


## Setup

1. Install via [npm](https://npmjs.org).

    `npm install now-forecast`

2. Specify your [forecast.io api key](https://developer.forecast.io/) and [location coords](http://dbsgeo.com/latlon/) in `config.json`.
   
   You'll find the config file in `$(npm -g root)/now-forecast`.

```
> cat $(npm -g root)/now-forecast/config.json
{
    "key": "YOUR-FORECAST.IO-API-KEY",
    "coords": "35.2102,-85.9364",
    "location": "Sewanee, TN",
    "defaults": ["summary", "temperature", "humidity"]
}
```

... or ...

1.  Download or clone.

2. Specify your [forecast.io api key](https://developer.forecast.io/) and [location coords](http://dbsgeo.com/latlon/) in `config.json`.

3. Use `npm -g install` to install dependencies and the `now` command-line utility.


## Usage

```coffeescript
{forecast} = require 'now'

# callback for handling the returned forecast data
today = (d) ->                
  console.log "Currently #{d.currently.summary}"
  console.log d.daily.summary

forecast today
```

This should print something like ...

    Currently Clear
    Light rain tomorrow through Wednesday; temperatures peaking at 89° on Thursday.


As you can see, the `forecast` method takes a callback for handling the returned forecast data.

Here's another example that'll print a summary forecast for each day of the week:

```coffeescript
days = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT']

dayName = (day) -> 
  date = new Date(day.time * 1000)
  days[date.getDay()]

week = (d) -> console.log dayName(day), day.summary for day in d.daily.data

forecast week
```

This should print something like ...

    SUN Partly cloudy starting in the afternoon, continuing until evening.
    MON Light rain until evening.
    TUE Light rain until evening.
    WED Light rain until evening.
    THU Clear throughout the day.
    FRI Partly cloudy in the evening.
    SAT Partly cloudy throughout the day.
    SUN Partly cloudy until evening.


### CLI

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
