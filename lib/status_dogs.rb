require 'rack/file'

class StatusDogs

  DOGS = [ 100, 200, 206, 207, 300, 301, 302, 303, 307, 401, 402, 403, 404, 405, 406, 408, 409, 410, 413, 414, 416, 417, 418, 422, 423, 424, 426, 429, 431, 444, 450, 500, 502, 507, 508, 599 ].freeze
  DOGS_DIR = File.expand_path("../../cats", __FILE__)

  def initialize(app, options = {})
    @app, @options = app, options
  end

  def call(env)
    @status, @headers, @response = @app.call(env)
    if display_dog?
      _, @headers, @response = Rack::File.new(DOGS_DIR).call("REQUEST_METHOD" => "GET", "PATH_INFO" => "#{@status}.jpg")
    end
    [ @status, @headers, @response ]
  end

  def display_dog?
    dogs = DOGS
    if @options.has_key?(:only)
      dogs = Array(@options[:only]) & dogs
    end
    if @options.has_key?(:except)
      dogs = dogs - Array(@options[:except])
    end
    dogs.include?(@status.to_i)
  end

end
