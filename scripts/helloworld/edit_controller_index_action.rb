file_name = "helloworld/app/controllers/hello_controller.rb"

body = File.open(file_name, "r") do |file|
  file.read
end

src_regex = /def index\n/
dst = "def index\n    p \"yay!\"\n"
body.gsub!(src_regex, dst)

File.open(file_name, "w") do |file|
  file.puts body
end
