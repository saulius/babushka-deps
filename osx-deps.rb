# Update version numers before running ;-)
#
# Running:
#   bash -c "`curl babushka.me/up`"
#   babushka ember
#

dep 'ember' do
  requires 'ember osx apps installed'

  requires 'macvim.managed',
           'tmux.managed',
           'ack.managed',
           'zsh.managed',
           'autojump.managed',
           'axel.managed',
           'htop.managed',
           'lynx.managed',
           'midnight-commander.managed',
           'most.managed',
           'node.managed',
           'subversion.managed',
           'wget.managed',
           'tig.managed',
           'unrar.managed',
           'pip.managed',
           'npm.managed'

  requires 'rvm'
  requires 'kindleGen'
end

dep 'ember osx apps installed' do
  requires 'Google Chrome.app',
           'Firefox.app',
           'Skype.app',
           'VMWare Fusion.installer'


  requires 'Dropbox.app',
           'Transmission.app',
           'Evernote.app',
           'MindNode Pro.app',
           'pomodoro.app',
           'Sparrow.app',
           'Rucksack.app',
           'VLC.app',
           'Growl.installer',
           'PCKeyboardHack.installer',
           'RazerOrochi.installer'

  requires 'LaunchBar.app',
           'Divvy.app',
           '1Password.app'

  requires 'iTerm.app'
end
