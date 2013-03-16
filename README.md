# InlineTemplateLoader

Loads Sinatraish inline template

## Installation

Add this line to your application's Gemfile:

    gem 'inline_template_loader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inline_template_loader

## Usage

```ruby
require 'inline_template_loader'

templates = InlineTemplateLoader.load

puts templates[:foo]
puts templates[:bar]

__END__

@@ foo
<p>Here is the template named foo</p>

@@ bar
<p>Here is the template named bar</p>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
