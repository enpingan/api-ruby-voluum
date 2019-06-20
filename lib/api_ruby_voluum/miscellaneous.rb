module RubyVoluum
  class Miscellaneous
    def initialize(connection)
      @connection = connection
    end

    def timezones
      @connection.get('dictionary/timezone')['timezones']
    end
  end
end
