require 'inline_template_loader'

describe 'InlineTemplateLoader' do
  describe '#load' do
    subject { InlineTemplateLoader.load(__FILE__) }

    it { should == {foo: "Here is template named foo.\n\n", bar: "Here is template named bar.\n"} }
  end
end

__END__

@@ foo
Here is template named foo.

@@ bar
Here is template named bar.
