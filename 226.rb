require 'tempfile'

def long_time_t?
  t = Time.at(0x8000_8000)
  Tempfile.open('size_of_time_t') do |f|
    File.utime(t, t, f.path)
    File.mtime(f.path) == t
  end
end

puts "size of time_t is #{long_time_t? ? 64  : 32} bit"
