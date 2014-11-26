require 'socket'
require 'pp'

module MyModule
  def save
    puts 'before'
    super
    puts 'after'
  end
end
class UseModule
  prepend MyModule
  # use prepend instead include to execute all methods not
  # only the last of hierarchy
  def save
    puts 'save'
  end
end
UseModule.new.save

#pp Socket.getifaddrs
#pp Socket.gethostname

#enumerabl chunck

"the quick brown fox".each_char.chunk do |letter|
  %w{a e i o u}.include?(letter) ? "vowel" : "consonant"
end.each do |type, letters|
  puts "#{type}: #{letters.join}"
end