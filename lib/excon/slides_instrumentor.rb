module Excon
  class SlidesInstrumentor
    attr_accessor :events

    def initialize(extra_attrs={})
      @extra_attrs = extra_attrs
    end

    def instrument(name, params = {}, &block)
      attrs = { host: params[:host], path: params[:path],
        method: params[:method], expects: params[:expects] }
      attrs.merge!(@extra_attrs)
      Slides.log(name, attrs) { yield if block_given? }
    end
  end
end
