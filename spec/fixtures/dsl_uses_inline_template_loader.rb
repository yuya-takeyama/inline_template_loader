require 'inline_template_loader'

class DslUsesInlineTemplateLoader
  def self.load_template(sym)
    @@templates = InlineTemplateLoader.load 4
  end

  def self.dsl(&block)
    class_eval &block
  end

  def self.templates
    @@templates
  end
end
