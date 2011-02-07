# Run me with:
#   $ watchr test.watchr

# --------------------------------------------------
# Rules
# --------------------------------------------------
watch( '^test/riot/tc_.*\.rb'            )  { |m| ruby  m[0] }
watch( '^lib/(.*)\.rb'                   )  { |m| test "test/riot/tc_#{m[1]}.rb" }
watch( '^lib/monopoly/(.*)\.rb'          )  { |m| test "test/riot/tc_#{m[1]}.rb" }

# --------------------------------------------------
# Signal Handling
# --------------------------------------------------
Signal.trap('QUIT') { ruby tests  } # Ctrl-\
Signal.trap('INT' ) { abort("\n") } # Ctrl-C

# --------------------------------------------------
# Helpers
# --------------------------------------------------

def test(test)
  run "rake test TEST=test"
end

def ruby(*paths)
  run "ruby -I.:lib:test -e'%w( #{paths.flatten.join(' ')} ).each {|p| require p }'"
end

def tests
  Dir['test/riot/tc_*.rb'] - ['test/test_helper.rb']
end

def run( cmd )
  #growl  cmd
  system cmd
end

def growl(message, title = "Test Results:")
  growlnotify = `which growlnotify`.chomp
  options = "-m '#{message}' -t '#{title}'"      
  system %(#{growlnotify} #{options} &)
end