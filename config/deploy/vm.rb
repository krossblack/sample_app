ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

set :url, 'http://localhost/'

set :ssh_options, {

   user: 'vagrant',
   keys: %w(~/.vagrant.d/insecure_private_key),
   forward_agent: false,
   auth_methods: %w(publickey)
}

server "192.168.34.40"
