require "inline_template_loader/version"

module InlineTemplateLoader
  def self.load_inline_template(file)
    templates = {}
    sym = nil

    app, data = ::IO.read(file).gsub("\r\n", "\n").split(/^__END__$/, 2)

    data.each_line do |line|
      if line =~ /^@@\s*(.*\S)\s*$/
        sym = $1.to_sym
      else
        if sym
          unless templates[sym]
            templates[sym] = line
          else
            templates[sym] += line
          end
        end
      end
    end

    templates
  end
end
