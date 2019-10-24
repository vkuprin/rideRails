module CssModulesHelper
  def css_module_class(name, selector)
    "#{encode_selector_name(selector)}__#{name}"
  end

  def encode_selector_name(name)
    Base64.encode64(name).gsub(/\W/, "")
  end
end
