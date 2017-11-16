set :stage, :production
set :branch, 'master'


# set :pty, true
# set :ssh_options, {
#   # forward_agent: true,
#   # auth_methods: %w(password)
#   # keys: ["/home/algofocus/.ssh/id_ras.pub"]
#  #  	default_run_options[:pty] = true
# 	# ssh_options[:forward_agent] = true
# 	# ssh_options[:auth_methods] = ["publickey"]
# 	# ssh_options[:keys] = ["/home/algofocus/pem_files/RegApp.pem"]
# }
set :pty, true

set :ssh_options, {
  forward_agent: true,
  auth_methods: ["publickey"],
  keys: ["/home/algofocus/pem_files/RegApp.pem"]
}
server '13.126.198.41', user: 'ubuntu', roles: %w{web app db}
# ubuntu@18.216.250.170
# 18.216.97.200 #USA server
# 13.126.198.41 #mumbai server

