fuseki_file = "jena-fuseki-1.1.1"
fuseki_src = "http://ftp.meisei-u.ac.jp/mirror/apache/dist//jena/binaries/" + fuseki_file + "-distribution.tar.gz"

user_home = "/home/vagrant/"
fuseki_home = user_home + fuseki_file
target = user_home + fuseki_file + "-distribution.tar.gz"

remote_file target do
    source fuseki_src
    mode "0644"
end

execute "tar-fuseki" do
    cwd user_home
    command "tar -xzf " + fuseki_file + "-distribution.tar.gz"
    creates fuseki_file
end

link "/etc/init.d/fuseki" do
    to fuseki_home + "/fuseki"
end

service "fuseki" do
    action [:enable, :start]
end
