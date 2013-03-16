require 'inline_template_loader'

templates = InlineTemplateLoader.load(__FILE__)

puts templates[:foo]
puts templates[:bar]

__END__

@@ foo
<p>Here is the template named foo</p>

@@ bar
<p>Here is the template named bar</p>
