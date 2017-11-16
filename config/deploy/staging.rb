set :stage, :production
set :branch, 'master'


set :pty, true
set :ssh_options, {
  # forward_agent: true,
  # auth_methods: %w(password)
  keys: ["/home/algofocus/.ssh/id_ras.pub"]
}
server '18.216.97.200', user: 'ubuntu', roles: %w{web app db}
# ubuntu@18.216.250.170
# 18.216.97.200

