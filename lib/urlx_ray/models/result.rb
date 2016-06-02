# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/02/2016

module UrlxRay
  class Result

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_name

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :http_ok

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_country_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_city

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :query

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :content_encoding

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_country

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :real

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :http_redirect

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_hostname

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :valid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_region

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :content_size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :http_status_message

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :content_type

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :load_time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_ip

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :http_status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url_protocol

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :url_port

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url_path

    def initialize(server_name = nil,
                   http_ok = nil,
                   server_country_code = nil,
                   server_city = nil,
                   query = nil,
                   content_encoding = nil,
                   server_country = nil,
                   real = nil,
                   http_redirect = nil,
                   url = nil,
                   server_hostname = nil,
                   valid = nil,
                   server_region = nil,
                   content_size = nil,
                   http_status_message = nil,
                   content_type = nil,
                   load_time = nil,
                   server_ip = nil,
                   http_status = nil,
                   url_protocol = nil,
                   url_port = nil,
                   url_path = nil)
      @server_name = server_name
      @http_ok = http_ok
      @server_country_code = server_country_code
      @server_city = server_city
      @query = query
      @content_encoding = content_encoding
      @server_country = server_country
      @real = real
      @http_redirect = http_redirect
      @url = url
      @server_hostname = server_hostname
      @valid = valid
      @server_region = server_region
      @content_size = content_size
      @http_status_message = http_status_message
      @content_type = content_type
      @load_time = load_time
      @server_ip = server_ip
      @http_status = http_status
      @url_protocol = url_protocol
      @url_port = url_port
      @url_path = url_path

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        server_name = hash["server_name"]
        http_ok = hash["http_ok"]
        server_country_code = hash["server_country_code"]
        server_city = hash["server_city"]
        query = hash["query"]
        content_encoding = hash["content_encoding"]
        server_country = hash["server_country"]
        real = hash["real"]
        http_redirect = hash["http_redirect"]
        url = hash["url"]
        server_hostname = hash["server_hostname"]
        valid = hash["valid"]
        server_region = hash["server_region"]
        content_size = hash["content_size"]
        http_status_message = hash["http_status_message"]
        content_type = hash["content_type"]
        load_time = hash["load_time"]
        server_ip = hash["server_ip"]
        http_status = hash["http_status"]
        url_protocol = hash["url_protocol"]
        url_port = hash["url_port"]
        url_path = hash["url_path"]
        # Create object from extracted values
        Result.new(server_name,
                   http_ok,
                   server_country_code,
                   server_city,
                   query,
                   content_encoding,
                   server_country,
                   real,
                   http_redirect,
                   url,
                   server_hostname,
                   valid,
                   server_region,
                   content_size,
                   http_status_message,
                   content_type,
                   load_time,
                   server_ip,
                   http_status,
                   url_protocol,
                   url_port,
                   url_path)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['server_name'] = server_name
      hash['http_ok'] = http_ok
      hash['server_country_code'] = server_country_code
      hash['server_city'] = server_city
      hash['query'] = query
      hash['content_encoding'] = content_encoding
      hash['server_country'] = server_country
      hash['real'] = real
      hash['http_redirect'] = http_redirect
      hash['url'] = url
      hash['server_hostname'] = server_hostname
      hash['valid'] = valid
      hash['server_region'] = server_region
      hash['content_size'] = content_size
      hash['http_status_message'] = http_status_message
      hash['content_type'] = content_type
      hash['load_time'] = load_time
      hash['server_ip'] = server_ip
      hash['http_status'] = http_status
      hash['url_protocol'] = url_protocol
      hash['url_port'] = url_port
      hash['url_path'] = url_path
      hash
    end
  end
end
