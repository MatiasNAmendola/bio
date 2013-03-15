require 'rake/testtask'

namespace 'test' do 
  test_files             = FileList['test/**/*_test.rb']
  integration_test_files = FileList['spec/**/*_integration_spec.rb']
  unit_test_files        = test_files - integration_test_files

  desc "Run unit tests"
  Rake::TestTask.new('unit') do |t|
    t.libs.push "test"
    t.test_files = unit_test_files
    t.verbose = true
  end
end

desc "Run all tests"
task 'test' => %w[test:unit]
task 'default' => 'test'
