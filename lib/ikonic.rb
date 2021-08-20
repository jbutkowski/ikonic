class Ikonic
  def self.icon(name, options={})
    DEFAULTS.each { |key, val| options[key] ||= val }

    template = File.read(
      File.join(__dir__, "../assets/#{options[:theme]}/#{options[:style]}/#{name}.svg"))

    template.gsub!(
        /stroke-width="(\d+)"/, 
        "stroke-width=\"#{options[:width]}\""
      ) if options[:width]

    template.insert(5, "class=\"#{options[:class]}\" ") if options[:class]

    template
  end

  DEFAULTS = {
    theme: 'heroicon',
    style: 'outline',
    size: 24,
    width: 2
  }
end