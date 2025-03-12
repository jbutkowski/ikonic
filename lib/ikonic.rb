module Ikonic
  DEFAULTS = {
    theme: 'bootstrap'
  }.freeze

  def self.icon(name, options = {})
    # Merge defaults with provided options
    options = DEFAULTS.merge(options)

    # Determine template path
    style_path = options[:style] ? "#{options[:style]}/" : ""
    template_path = File.join(__dir__, "../assets/#{options[:theme]}/#{style_path}#{name}.svg")

    # Read and process template
    template = File.read(template_path)
    template.gsub!(/^<\?xml.+?>\n/, '') # Remove XML declaration

    # Apply optional attributes
    apply_optional_attributes!(template, options)

    # Return safe HTML if in Rails context
    defined?(Rails) ? template.html_safe : template
  end

  def self.apply_optional_attributes!(template, options)
    if options[:width]
      template.gsub!(/stroke-width="((\d+\.\d+|\d+))"/, "stroke-width=\"#{options[:width]}\"")
    end

    if options[:class]
      template.insert(5, "class=\"#{options[:class]}\" ")
    end

    if options[:title]
      template.insert(5, "title=\"#{options[:title]}\" ")
    end

    if options[:data]
      options[:data].each do |key, value|
        template.insert(5, "data-#{key.gsub(/_/,'-')}=\"#{value}\" ")
      end
    end
  end
end
