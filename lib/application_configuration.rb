class ApplicationConfiguration
  class Config
    def method_missing(method_name, *args, &block)
      raise unless method_name.to_s.end_with?("=")

      setter = method_name
      getter = method_name.to_s.slice(0...-1).to_sym
      instance_var = "@#{getter}".to_sym
      define_singleton_method(setter) do |new_val|
        instance_variable_set(instance_var, new_val)
      end
      define_singleton_method(getter) { instance_variable_get(instance_var) }

      value = args[0]
      send(setter, value)
    rescue
      super(method_name, *args, &block)
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