# config valid only for current version of Capistrano
lock '3.4.1'

set :application, 'RegApp'
set :repo_url, 'git@github.com:prshntchourasia/RegApp.git'
set :deploy_to, "/var/www/cap/RegApp"


namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

