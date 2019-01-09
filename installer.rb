require 'erb'

template = ERB.new(File.read('track.scd.erb'))
this_directory = (`pwd`).chomp

File.write("track.scd", template.result(binding))