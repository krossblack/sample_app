ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

set :url, 'http://localhost/'
set :repo_url, 'https://github.com/krossblack/sample_app'
set :ssh_options, {
   user: 'vagrant',
   keys: %w(~/.vagrant.d/insecure_private_key),
   forward_agent: true,
   auth_methods: %w(publickey)
}

role %w(web db), "192.168.34.40"
