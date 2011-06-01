dep 'autojump.managed'
dep 'axel.managed'
dep 'git.managed'
dep 'htop.managed'
dep 'lynx.managed'
dep 'midnight-commander.managed' do
  provides 'mc'
end
dep 'most.managed'
dep 'node.managed'
dep 'subversion.managed' do
  provides 'svn'
end
dep 'zsh.managed'
dep 'ack.managed'
dep 'wget.managed'
dep 'macvim.managed' do
  provides 'mvim'
end
dep 'tmux.managed'
dep 'tig.managed'
dep 'unrar.managed'
dep 'pip.managed'
dep 'npm.managed'

dep 'rvm' do
  setup {
    set :path, '~/.rvm/scripts/rvm'
  }

  met? {
    var(:path).p.file?
  }
  meet {
    # Install from Github using provided script
    shell 'bash -c "`curl http://rvm.beginrescueend.com/releases/rvm-install-head`"'

    shell 'bash -c "source ~/.rvm/scripts/rvm; rvm notes"'

    # Make sure RVM is always loaded by bash
    profile = Dir["~/.bash_profile", "~/.bashrc"].first || "~/.bash_profile"
    shell "echo 'if [[ -s \"$HOME/.rvm/scripts/rvm\" ]]  ; then source \"$HOME/.rvm/scripts/rvm\" ; fi' >> #{profile}"
  }
end

dep 'oh-my-zsh' do
  setup {
    set :path, '~/.oh-my-zsh'
  }

  met? {
    var(:path).p.file?
  }
  meet {
    # Install from Github using provided script
    shell 'wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh'

    shell 'chsh -s /bin/zsh'
  }
end
