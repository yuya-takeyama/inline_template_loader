require File.expand_path('./dsl_uses_inline_template_loader', File.dirname(__FILE__))

DslUsesInlineTemplateLoader.dsl do
  load_template :foo
end

__END__
@@ foo
This is an external file
