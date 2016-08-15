module Metascraper
  class Config
    INSTANCE = Config.new
    DEFAULT_CHARSET = "utf-8"

    property min_width, base_url, url, uri, charset

    def initialize
      @min_width = 500
      @url = ""
      @base_url = ""
      @uri = URI.new
      @charset = DEFAULT_CHARSET
    end
  end

  def self.config
    yield Config::INSTANCE
  end

  def self.config
    Config::INSTANCE
  end
end