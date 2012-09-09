excon-slides_instrumentor
=========================

Excon instrumentor providing basic instrumentation in [Slides](https://github.com/brandur/slides) format.

Bundle in your `Gemfile`:

``` ruby
gem "excon-slides_instrumentor"
```

Then start using it:

``` ruby
api = Excon.new(Facts::Config.api, ssl_verify_peer: false,
  instrumentor: Excon::SlidesInstrumentor.new(id: request.env["REQUEST_ID"]))

# or
Excon.defaults[:instrumentor] =
  Excon::SlidesInstrumentor.new(id: request.env["REQUEST_ID"])
```

Logging like the following will start to appear on `$stdout`:

    excon.request host=facts-api.herokuapp.com path=/facts/latest method=get expects=200 id=ttnhll3u at=start
    excon.request host=facts-api.herokuapp.com path=/facts/latest method=get expects=200 id=ttnhll3u at=finish elapsed=820ms
    excon.response id=ttnhll3u at=start
    excon.response id=ttnhll3u at=finish elapsed=0ms
