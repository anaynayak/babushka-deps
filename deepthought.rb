dep 'hostname' do
  met? {
    shell("hostname").include? "deepthought"
  }

  meet {
    shell("sudo scutil --set HostName deepthought")
  }
end

dep 'deepthought' do
  requires 'homebrew'
  requires 'all-packaged-apps'
  requires 'all-osx-settings'
  requires 'all-osx-apps'
end
