<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Current design is to take the public NPI file from https://download.cms.gov/nppes/NPI_Files.html and parse it in order to geocode the locations of providers.

get_sample.dart parses the csv file downloaded from CMS (currently limits the results to first 1000 entries for testing/building purposes).

Running dart_npi_geocode_example.dart creates a file called npi_locations.csv with all active providers in the input file npi.csv
    - Geocoding calls are made to the nominatim servers which have a geocoding limit of one request per second, as a result the geocode method is coded to contain a 1 second delay on each geocode request
    - For better results on the NPI file the geocode function is hard coded to use USA as the country value in the search parameters

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.

## To Do

