dep 'RazerOrochi.installer' do
  source 'http://www.razersupport.com/drivers/Orochi/mac/Orochi_Mac_Driver_v2.00.dmg'
  met? {
    '/Library/PreferencePanes/Razer Orochi.prefPanes'
  }
end

dep 'PCKeyboardHack.installer' do
  source 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-6.3.0.pkg.zip'
  met? {
    '/Library/PreferencePanes/PCKeyboardHack.prefPane'.p.exist?
  }
end

dep 'Google Chrome.app' do
  source 'https://dl-ssl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
end

dep 'Firefox.app' do
  source 'http://download.mozilla.org/?product=firefox-4.0.1&os=osx&lang=en-US'
end

dep 'Skype.app' do
  source 'http://www.skype.com/go/getskype-macosx.dmg'
end

dep 'Twitter.app' do
# year right, app store..
end

dep 'VMWare Fusion.installer' do
  source 'http://download2.vmware.com/software/fusion/VMware-Fusion-3.1.2-332101-light.dmg'
  met? { "/Applications/VMWare Fusion.app".p.exists? }
end

dep 'Dropbox.app' do
  source 'http://cdn.dropbox.com/Dropbox%201.0.10.dmg'
end

dep 'Transmission.app' do
  source 'http://download.transmissionbt.com/files/Transmission-2.31.dmg'
end

dep 'Evernote.app' do
  source 'http://www.evernote.com/about/download/get.php?file=EvernoteMac'
end

dep 'MindNode Pro.app' do
  source 'http://www.mindnode.com/download/MindNodePro.zip'
end

dep 'pomodoro.app' do
# app store
end

dep 'Sparrow.app' do
  source 'http://download.sparrowmailapp.com/release/Sparrow-latest.dmg'
end

dep 'Rucksack.app' do
  source 'http://creativebe.com/download/archiver'
end

dep 'iTerm.app' do
  source 'http://iterm2.googlecode.com/files/iTerm2-beta1.zip'
end

dep 'Growl.installer' do
  source 'http://growl.cachefly.net/Growl-1.2.1.dmg'
  #pkg_name 'Growl.pkg'
  provides 'growlnotify'
end

dep '1Password.app' do
  source 'http://aws.cachefly.net/dist/1P/mac/1Password-3.5.9.zip'
end

dep 'Divvy.app' do
  source 'http://mizage.com/divvy/downloads/Divvy.zip'
end

dep 'LaunchBar.app' do
  source 'http://www.obdev.at/downloads/launchbar/LaunchBar-5.0.4.dmg'
end

dep 'VLC.app' do
  source 'http://heanet.dl.sourceforge.net/project/vlc/1.1.9/macosx/vlc-1.1.9.dmg'
end

dep 'kindleGen' do
  define_var :install_path, :default => '~/bin', :type => :path

  met? { which 'kindleGen' }
  meet {
    uri = 'http://s3.amazonaws.com/kindlegen/KindleGen_Mac_i386_v1.2.zip'
    handle_source uri do
      raw_shell("mkdir #{var(:install_path)}").stdout =~ /\S+||Exists/
      log_shell "Installing kindleGen to #{var(:install_path)}", "cp kindleGen #{var(:install_path)}"
      log_shell "Making kindleGen executable", "chmod +x #{var(:install_path)}/kindleGen"
    end
  }
end
