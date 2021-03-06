#!/usr/bin/env ruby
begin
  require 'rubygems'
  require 'irb/completion'
  require 'irb/ext/save-history'
  # require 'wirble'
rescue LoadError => e
  "Could not load stuff in .irbrc"
end

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Wirble.init
# Wirble.init(:skip_prompt => true, :skip_history => true)
# Wirble.colorize

class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  # print documentation
  #
  #   ri 'Array#pop'
  #   Array.ri
  #   Array.ri :pop
  #   arr.ri :pop
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

# load File.dirname(__FILE__) + '/.railsrc' # if $0 == 'irb' && (ENV['RAILS_ENV'] || defined?(Rails))
