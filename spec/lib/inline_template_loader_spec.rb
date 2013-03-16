require 'inline_template_loader'

describe 'InlineTemplateLoader' do
  let(:fixtures_dir)  { File.expand_path('../fixtures', File.dirname(__FILE__)) }
  let(:external_file) { fixtures_dir + '/external_file.rb' }
  let(:external_file) { fixtures_dir + '/external_file.rb' }
  let(:external_file_without_templates) { fixtures_dir + '/external_file_without_templates.rb' }

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

    context 'from external file' do
      shared_examples_for 'load templates correctly from external file' do
        it { should == {foo: "This is an external file\n"} }
      end

      context 'with filepath' do
        subject { InlineTemplateLoader.load(external_file) }

        it_behaves_like 'load templates correctly from external file'
      end

      context 'with module uses inline template loader' do
        before do
          require external_file
        end

        subject { DslUsesInlineTemplateLoader.templates }

        it_behaves_like 'load templates correctly from external file'
      end
    end

    context 'from external file without templates' do
      subject { InlineTemplateLoader.load(external_file_without_templates) }

      it { should == {} }
    end
  end
end

__END__

@@ foo
Here is template named foo.

@@ bar
Here is template named bar.
