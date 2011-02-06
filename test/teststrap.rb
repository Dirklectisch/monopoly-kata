require 'riot'

module Growler

  def growl(message)
    growlnotify = `which growlnotify`.chomp
    title = "Test Results"
    options = "-m '#{message}' -t '#{title}'"
    system %(#{growlnotify} #{options} &)
  end  

end

class GrowlReporter < Reporter
  
  def pass(description, message); end
  def fail(description, message, line, file); end
  def error(description, e); end
  def results(time_taken); end
  
end