require 'mongrel'
require 'stringio'

module Rack
  module Handler
    class Mongrel < ::Mongrel::HttpHandler
      def self.run(app, options={})
        ::Mongrel.run(app, options)
      end
    end
  end
end
