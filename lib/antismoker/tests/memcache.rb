#!/usr/bin/env ruby

require "antismoker/tests"
require "antismoker/tests/memcache/version"
require "memcache"

module AntiSmoker
  class MemcacheTest < AbstractSmokeTest
    include MemcacheModule

    def initialize(host, port, options={})
      super
      @command = options.fetch(:command, :stats)
    end
    attr_reader :command

    def run_once(options={})
      client = Memcache.new(:server => "#{host}:#{port}")
      response = client.__send__(command)
      response_ok(response)
    rescue => error
      logger.warn("unknown error: #{self}: #{error}")
      false
    end

    def response_ok(response)
      response
    end

    def to_s
      "memcache://#{host}:#{port}"
    end
  end
end

# vim:set ft=ruby sw=2 ts=2 :
