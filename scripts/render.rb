#!/usr/bin/env ruby
require 'json'

file_name = ARGV[0]

json_path = "../presentations/#{file_name}.json"

file = File.read(json_path)
data_hash = JSON.parse(file)

concat_videos = ''
data_hash['secuence'].each_with_index do |video_path, i|
  concat_videos += '|' unless i == 0
  concat_videos += "../videos/#{video_path}.mpeg"
end

shell_command = %(ffmpeg -i concat:\"#{concat_videos}\" ../outputs/#{data_hash['file_name']}.mpeg)
puts shell_command

%x( #{shell_command} )
