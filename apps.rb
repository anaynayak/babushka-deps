packaged_apps = %w{
ack
autojump
axel
boot2docker
casperjs
chromedriver
csshx
curl
docker
dvm
git
git-flow
go
gource
iftop
jq
lame
legit
nginx
node
parallel
phantomjs
pstree
r
rbenv
ruby-build
s3cmd
sbt
scala
siege
tig
tree
unrar
watch
wget
wireshark
}

=begin
couchdb
corkscrew
aws-cfn-tools
elasticsearch
ec2-api-tools
hadoop
haskell-platform
hbase
hive
logstalgia
logstash
mysql
passenger
play
python
tesseract
the_silver_searcher
=end

packaged_apps_alt_provides = {
  "leiningen" => ["lein"],
  "sqlite" => ["sqlite3"],
  "graphviz" => ["dot"],
  "android-sdk" => ["adb"],
  "htop-osx" => ["htop"],
  "imagemagick" => ["convert"],
  "macvim" => ["mvim"],
  "mercurial" => ["hg"],
  "mongodb" => ["mongo"],
  "qt" => ["qmake"],
  "rbenv-aliases" => ["rbenv-alias"],
  "brew-cask" => ["brew-cask.rb"]
  #"rbenv-readline"
}

packaged_apps.each do |app|
  dep "#{app}.bin" do
    installs app
  end
end

packaged_apps_alt_provides.each do |app, ps|
  dep "#{app}.bin" do
    installs app
    provides ps
  end
end

dep "all-packaged-apps" do
  requires *(packaged_apps + packaged_apps_alt_provides.keys).map { |a| "#{a}.bin" }
end

