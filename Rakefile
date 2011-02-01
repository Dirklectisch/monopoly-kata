require 'rake/testtask'

task :my_task do
  puts "Hello Rake"
end

Rake::TestTask.new(:test_movement) do |t|
   t.libs << 'test'
   t.test_files = ['test/tc_position.rb',
                   'test/tc_board.rb']
end

Rake::TestTask.new(:test_all) do |t|
   t.libs << 'test'
   t.pattern = 'test/tc_*.rb'
   t.warning = true
end
 
 