require "inline_template_loader/version"

module InlineTemplateLoader
  def self.load(arg = nil)
    if arg.is_a? ::Integer
      caller_pos = arg
    else
      caller_pos = 0
    end

    if arg.is_a? ::String
      file = arg
    elsif
      file = caller[caller_pos].split(':').first
    end

    templates = {}
    sym = nil

    app, data = ::IO.read(file).gsub("\r\n", "\n").split(/^__END__$/, 2)

    if data
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
    end

    templates
  end
end
