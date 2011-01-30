# Run me with:
#   $ watchr test.watchr

# --------------------------------------------------
# Rules
# --------------------------------------------------
watch( '^test/tc_.*\.rb'                 )  { |m| ruby  m[0] }
watch( '^lib/(.*)\.rb'                   )  { |m| ruby "test/tc_#{m[1]}.rb" }
watch( '^lib/monopoly/(.*)\.rb'          )  { |m| ruby "test/tc_#{m[1]}.rb" }

# --------------------------------------------------
# Signal Handling
# --------------------------------------------------
Signal.trap('QUIT') { ruby tests  } # Ctrl-\
Signal.trap('INT' ) { abort("\n") } # Ctrl-C

# --------------------------------------------------
# Helpers
# --------------------------------------------------
def ruby(*paths)
  run "ruby #{gem_opt} -I.:lib:test -e'%w( #{paths.flatten.join(' ')} ).each {|p| require p }'"
end

def tests
  Dir['test/**/tc_*.rb'] - ['test/test_helper.rb']
end

def run( cmd )
  puts   cmd
  system cmd
end

def gem_opt
  defined?(Gem) ? "-rubygems" : ""
end