require 'mongrel'
require 'stringio'

module Rack
  module Handler
    class Mongrel < ::Mongrel::HttpHandler
      def self.run(app, options={})
        server = ::Mongrel::HttpServer.new(options[:Host] || '0.0.0.0',
                                           options[:Port] || 8080,
                                           app)
        server.start!
      end
    end
  end
end
