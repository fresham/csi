set :application, "csi"
set :user, "deploy"
set :repository,  "git@gluttony:csi.git"
set :deploy_to, "/var/www/apps/#{application}"

set :scm, :git
set :scm_username, user
set :runner, user

set :rails_env, 'production'

set :domain, "pride"
role :web, domain
role :app, domain
role :db,  domain, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
