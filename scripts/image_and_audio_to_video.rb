#!/usr/bin/env ruby
# image + audio => video

file_path = ARGV[0]

# imput
image_path = "../images/#{file_path}.png"
audio_path = "../audios/#{file_path}.mp3"
# output
video_path = "../videos/#{file_path}.mpeg"

shell_command = %(ffmpeg -loop 1 -i #{image_path} -i #{audio_path} -shortest #{video_path})
puts shell_command
%x( #{shell_command} )
