require 'inline_template_loader'

describe 'InlineTemplateLoader' do
  describe '#load' do
    context 'from this file' do
      shared_examples_for 'load templates correctly from this file' do
        it { should == {foo: "Here is template named foo.\n\n", bar: "Here is template named bar.\n"} }
      end

      context 'with filepath' do
        subject { InlineTemplateLoader.load(__FILE__) }

        it_behaves_like 'load templates correctly from this file'
      end

      context 'without filepath' do
        subject { InlineTemplateLoader.load }

        it_behaves_like 'load templates correctly from this file'
      end
    end
  end
end

__END__

@@ foo
Here is template named foo.

@@ bar
Here is template named bar.
