require 'rake/testtask'

ENV['APP_ROOT'] = File.dirname(__FILE__)
ENV['LIBDIR'] = ENV['APP_ROOT'].to_s + '/lib'

desc "Open an irb session preloaded with ENV variables"
task :console do
  sh "irb -I #{ENV['LIBDIR']} --simple-prompt"
end

Rake::TestTask.new(:test_movement) do |t|
   t.libs << 'test'
   t.test_files = ['test/tc_position.rb']
end

Rake::TestTask.new(:test_all) do |t|
   t.libs << 'test'
   t.pattern = 'test/tc_*.rb'
   t.warning = true
end
 
 