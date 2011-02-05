require 'rake/testtask'

ENV['APP_ROOT'] = File.dirname(__FILE__)
ENV['LIBDIR'] = ENV['APP_ROOT'].to_s + '/lib'

desc "Open an irb session preloaded with paths and modules"
task :console do
  sh "irb -I #{ENV['LIBDIR']} -r #{'monopoly'} --simple-prompt"
end

desc "Open TODO list"
task :todo do
<<<<<<< HEAD
  file = ENV['APP_ROOT'] + '/TODO.taskpaper'
  sh "open #{file}"
=======
  todo_file = ENV['APP_ROOT'] + '/TODO.taskpaper'
  sh "open #{todo_file}"
>>>>>>> 815588aa507aca91964e3b2020c94f2107ff329e
end

Rake::TestTask.new(:test) do |t|
   t.libs << 'test'
   t.test_files = ['test/riot/tc_position.rb',
                   'test/riot/tc_presets.rb', 
                   'test/riot/tc_board.rb' ]
end

Rake::TestTask.new(:test_all) do |t|
   t.libs << 'test'
   t.pattern = 'test/tc_*.rb'
   t.warning = true
end
 
 