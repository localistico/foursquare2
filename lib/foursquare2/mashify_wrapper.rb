module Foursquare2
  class MashifyWrapper < Faraday::Mashify::Middleware
    def initialize(app = nil, opts = {})
      super(app, opts.merge(mash_class: HashWrapper))
    end
  end
end
