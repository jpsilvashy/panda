namespace :deploy do
  desc "Install rubygems needed for .. EVERTHING"
  task :install_gems do
    sudo "echo . && cd #{current_path} && sudo bundle install"
  end

  desc "Sets up S3 bucket, SDB domains, video player, admin user, and encoding Profile"
  task :bootstrap, :roles => :app do
    run "cd #{current_path}; MERB_ENV=#{merb_env} script/bootstrap"
  end
end
