cp = require 'child_process'
exec = cp.execSync
execAsync = cp.exec
c = console

PATH = "#{__dirname}"
PAGESIGNER_PATH = "#{PATH}/pagesigner-browserless/src/auditee"

url = "jsonplaceholder.typicode.com/users"
cmd = "python #{PAGESIGNER_PATH}/notarize.py #{url}"
c.log "Executing: #{cmd}"
# resp = exec cmd
# c.log resp.toString()

resp = execAsync cmd, execCb
execCb = (error, stdout, stderr) ->
  c.log stdout
  c.log stderr
