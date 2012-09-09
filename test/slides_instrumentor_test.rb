require "test_helper"

module Slides
  def self.log(event, attrs)
    $event, $attrs = event, attrs
    yield if block_given?
  end
end

describe Excon::SlidesInstrumentor do
  before do
    $event, $attrs = nil, nil
  end

  it "instruments a request" do
    instrumentor = Excon::SlidesInstrumentor.new(id: "123")
    instrumentor.instrument("my-event", {
      host: "my-host", path: "/path", method: "GET", expects: 200 })
    $event.must_equal "my-event"
    $attrs.must_equal({ id: "123", 
      host: "my-host", path: "/path", method: "GET", expects: 200 })
  end
end
