class Ikonic
  def self.icon(name, options={})

    # Set defaults
    DEFAULTS.each { |key, val| options[key] ||= val }

    template_format = options[:theme] == 'heroicons' ? 
      "../assets/#{options[:theme]}/#{options[:style]}/#{name}.svg" :
      "../assets/#{options[:theme]}/#{name}.svg"


    template = File.read(File.join(__dir__, template_format))

    template.gsub!(
        /stroke-width="(\d+)"/, 
        "stroke-width=\"#{options[:width]}\""
      ) if options[:width]

    template.insert(5, "class=\"#{options[:class]}\" ") if options[:class]
    template.insert(5, "title=\"#{options[:title]}\" ") if options[:title]

    template
  end

  DEFAULTS = {
    theme: 'heroicons',
    style: 'outline',
    size: 24,
    width: 2
  }
end