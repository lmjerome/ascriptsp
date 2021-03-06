namespace :git do
  desc 'set up the remotes for git'
  task :remotes do
    configatron.git.remotes.each do|remote|
      `git remote rm #{remote}`
      `git remote add #{remote} http://github.com/#{remote}/#{configatron.git.repo}`
    end
  end
end
