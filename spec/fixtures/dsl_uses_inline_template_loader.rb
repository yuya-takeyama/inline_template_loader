require 'inline_template_loader'

class DslUsesInlineTemplateLoader
  def self.load_template
    # 0: dsl_uses_inline_template_loader.rb: load_templates
    # 1: external_file.rb: &block passed for dsl
    # 2: dsl_uses_inline_template_loader.rb: class_eval
    # 3: dsl_uses_inline_template_loader.rb: dsl
    # 4: external_file.rb: top

    @@templates = InlineTemplateLoader.load 4
  end

  def self.dsl(&block)
    class_eval &block
  end

  def self.templates
    @@templates
  end
end
