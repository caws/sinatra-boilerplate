class ApplicationConfiguration
  class Config
    def method_missing(config_name, *args, &block)
      instance_variable_set("@#{config_name.to_s.gsub('=', '')}", args.first)
    end
  end

  class << self
    def configure
      yield @configure ||= Config.new
    end

    def view_configuration
      @configure
    end
  end
end