require 'riot'

module Riot
  class GrowlReporter < IOReporter
  
    def initialize()
      super
    end
  
    def pass(description, message)
      # Silenced for automatic test run purposes
    end
    def fail(description, message, line, file)
      title = message
      message = "#{description} \n  #{line} \n #{file}"
      growl message, title
    end
    def error(description, e)
      title = e.message
      message = description
      growl message, title
    end
    def results(time_taken)
      values = [passes, failures, errors, ("%0.6f" % time_taken)]
      title = "Completed: Test Case #{current_context.description}"
      message = "%d passes, %d failures, %d errors in %s seconds" % values
      growl message, title
    end
  
    def growl(message, title = "Test Results:")
      growlnotify = `which growlnotify`.chomp
      options = "-m '#{message}' -t '#{title}'"      
      system %(#{growlnotify} #{options} &)
    end
    
  end
  
  Riot.reporter = GrowlReporter
  
end
