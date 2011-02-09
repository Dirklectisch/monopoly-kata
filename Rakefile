require 'rake/testtask'

ENV['APP_ROOT'] = File.dirname(__FILE__)
ENV['LIBDIR'] = ENV['APP_ROOT'].to_s + '/lib'

desc "Open an irb session preloaded with paths and modules"
task :console do
  sh "irb -I #{ENV['LIBDIR']} -r #{'monopoly'} --simple-prompt"
end

desc "Open TODO list"
task :todo do
  file = ENV['APP_ROOT'] + '/TODO.taskpaper'
  sh "open #{file}"
end

Rake::TestTask.new(:test) do |t|
   t.libs << 'test'
   t.loader = :rake
   t.verbose = false
   t.test_files = ['test/riot/tc_position.rb',
                   'test/riot/tc_presets.rb', 
                   'test/riot/tc_board.rb',
                   'test/riot/tc_game.rb',
                   'test/riot/tc_player.rb',
                   'test/riot/tc_dice.rb']
end

Rake::TestTask.new(:test_all) do |t|
   t.libs << 'test'
   t.pattern = 'test/tc_*.rb'
   t.warning = true
end
 
 