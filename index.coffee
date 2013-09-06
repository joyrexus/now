'''
Show current weather conditions via forecast.io.
    
'''
config = require 'config.json'
params = config.defaults

req = require 'request'
key = config.key          # your forecast.io api key
loc = config.coords       # your preferred location (lat/lon)
url = "https://api.forecast.io/forecast/#{key}/#{loc}"

exports.data = (callback) -> 
  req url, (err, res, body) -> callback JSON.parse(body)

exports.now = (args=[]) ->
  '''
  Show current weather conditions via forecast.io.

  `args` should be an array of strings indicating parameters 
  of interest, e.g. "time", "humidity", etc.

  Without args you get back something like (or whatever 
  defaults you've specified in `config.json`) ...

  { time: 1378231463,
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
    ozone: 291.68 }

  '''
  render = (args) ->
    params = args if args.length
    (err, res, body) -> 
      data = JSON.parse body
      if params
        console.log "#{p}: #{data.currently[p]}" for p in params
      else
        console.log data.currently
  req url, render(args)
