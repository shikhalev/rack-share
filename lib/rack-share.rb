# encoding: utf-8

require 'rack'
require 'share-paths'

module Rack

  class Share

    VERSION = [ 0, 1 ]

    def initialize rewrite: nil, mime: nil, additive: false
      @rewrite = rewrite
      @mime = mime
      @additive = additive
    end

    def call env
      case @rewrite
      when nil
        name = env['PATH']
      when Proc
        name = @rewrite.call env['PATH']
      # TODO
      end
    end

  end

end
