# SL-API-to-JSON-for-Home-Assistant-Restful-Sensor

Supported endpoints
* realtimedeparturesV4

## realtimedeparturesV4
[Documentation from SL](https://www.trafiklab.se/api/sl-realtidsinformation-4).
#### Arguments
* **apiKey** - (required) your API key from Trafiklabs (see documentation above)
* **destinationFilter** - (optional) regexp if you want to see all destinations in the feed
* **stationId** - (required) the station which you want to see real-time depatures from (The ID can be found by searching real-time depatures on SL.se and then notice the ID in the browser location bar.
* **transportMode** - (required) The type of transportation you would like to see in your stream. Supported types are (case sensitve):
  * Buses
  * Metros
  * Trains
  * Trams
  * Ships

#### Example
```
$ curl -s 'http://localhost:5000/realtimedeparturesV4?stationId=9326&transportMode=Metros&destinationFilter=Kung&apiKey=SECRETKEY' | jq
{
  "departures": [
    "Kungsträdgården 5 min",
    "Kungsträdgården 23:44"
  ]
}
```

Patches are welcome!
