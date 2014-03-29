dep 'VLC.app' do
  source "http://get.videolan.org/vlc/2.1.4/macosx/vlc-2.1.4.dmg"
end

dep 'VirtualBox.installer' do
  source "http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg"
end

dep 'Vagrant.app' do
  requires 'VirtualBox.installer'

  met? {
    "/usr/bin/vagrant".p.exists?
  }

  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1.dmg"
end

dep 'Dropbox.app' do
  source "https://www.dropbox.com/download?plat=mac"
end

dep 'iTerm.app' do
  source "http://iterm2.com/downloads/stable/iTerm2_v1_0_0.zip"
end

dep 'Spectacle.app' do
  source "https://s3.amazonaws.com/Spectacle/downloads/Spectacle+0.8.4.zip"
end

dep "Google Chrome.app" do
  source "http://dl.google.com/chrome/mac/stable/GoogleChrome.dmg"
end

dep 'Skype.app' do
  source 'http://www.skype.com/go/getskype-macosx.dmg'
end

dep 'Evernote.app' do
  source 'https://evernote.com/download/get.php?file=EvernoteMac'
end

dep 'Plex Media Server.app' do
  source 'http://downloads.plexapp.com/plex-media-server/0.9.9.7.429-f80a8d6/PlexMediaServer-0.9.9.7.429-f80a8d6-OSX.zip'
end

dep "Quicksilver.app" do
  source "http://cdn.qsapp.com/com.blacktree.Quicksilver__16391.dmg"
end

dep 'XQuartz.installer' do
  source 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.5.dmg'
  met? { '/Applications/Utilities/XQuartz.app'.p.exists?  }
end


dep '1Password.app' do
  source 'https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.21.zip'
end

dep 'all-osx-apps' do
  requires "VLC.app"
  requires "VirtualBox.installer"
  requires "Vagrant.app"
  requires "Dropbox.app"
  requires "iTerm.app"
  requires "Spectacle.app"
  requires "Google Chrome.app"
  requires "Skype.app"
  requires "Evernote.app"
  requires "Plex Media Server.app"
  requires "Quicksilver.app"
  requires "XQuartz.installer"
  requires "1Password.app"
end

=begin
TODO: https://github.com/tsommer/babushka-deps/blob/master/templates/cask.rb Switch over to brew-cask

Android Studio.app
Anki.app
Arduino.app
Audacity
CCMenu.app
Caffeine.app
Chess.app
Chicken of the VNC.app
CoRD.app
Flux.app
Hiss.app
IntelliJ IDEA 13.app
KeePassX.app
LibreOffice.app
MacPass.app
MailRaider.app
Mou.app
Pocket.app
PyCharm CE.app
RStudio.app
Skype.app
SourceTree.app
TextMate.app
VisualVM.app
=end