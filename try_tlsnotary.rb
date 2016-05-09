require 'open3'
PATH = File.expand_path "../", __FILE__
PAGESIGNER_PATH = "#{PATH}/pagesigner-browserless/src/auditee"

url = "jsonplaceholder.typicode.com/users"
cmd = "python #{PAGESIGNER_PATH}/notarize.py #{url}"
puts "Executing: #{cmd}"
Open3.popen3 cmd do |stdout, stderr|
  while line = stdout.gets do
    puts "notarize.py: #{line}"
  end
  puts "notarize.py - ERROR:  stderr.read"
end
