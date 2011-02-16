require 'rake'

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

task :test do
    test_files = ['views/tc_printable.rb',
                  'views/tc_templateBoard.rb']
    test_files.each do |file|
      run_test file    
    end
end

def run_test file
  path = ENV['APP_ROOT'] + '/test/' + file
  begin
    sh "bacon -I:lib #{path}"
  rescue => e
    puts e.message
    # Hide e.backtrace
  end
end
