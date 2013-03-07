# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inline_template_loader/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yuya Takeyama"]
  gem.email         = ["sign.of.the.wolf.pentagram@gmail.com"]
  gem.description   = %q{Loads inline template as a Hash}
  gem.summary       = %q{Loads inline template as a Hash}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "inline_template_loader"
  gem.require_paths = ["lib"]
  gem.version       = InlineTemplateLoader::VERSION

  gem.add_development_dependency('rspec', '~> 2.13.0')
  gem.add_development_dependency('guard-rspec', '~> 2.5.0')
  gem.add_development_dependency('rb-readline', '~> 0.4.2')
end
