# Status Dogs

Rack middleware replacing responses with relevant pictures of dogs, based on the status code.

The pictures are made/collected by [Mike Lee](https://twitter.com/mikeleeorg) on [HTTP Status Dogs](http://httpstatusdogs.com/).

This is a shameless fork of [status_cats](https://github.com/iain/status_cats) by @iain.

## Usage

Install:

``` sh
gem install status_dogs
```

Place inside your rackup file:

``` ruby
require 'status_dogs'
use StatusDogs
```

This will also replace valid responses, even `200`, basically making your application useless.

You can manage which status codes should be replaced with dogs, by using the `:only` and `:except`
options, which take arrays or ranges.

``` ruby
use StatusDogs, :only => [ 403, 404, 500 ]

# or ...

use StatusDogs, :except => 200...300
```

## Development

Install dependencies:

``` sh
bundle install
```

Run tests:

``` sh
rake
```

You can run the demo application:

``` sh
bundle exec rackup
```

The application will trigger the response code depending on the path you visit, so visiting
[http://localhost:9292/418](http://localhost:9292/418) will respond with a teapot.


## Known issues

Status codes `100` (Continue), `204` (No Content) and `304` (Not Modified) cannot have a response body. Triggering them will cause Rack to throw up.

## License

The Ruby code in this project is released under the MIT License.

The pictures of dogs are copywrited by [Mike Lee](https://twitter.com/mikeleeorg) from http://httpstatusdogs.com/
