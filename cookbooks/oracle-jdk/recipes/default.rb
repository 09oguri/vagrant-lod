execute "add-apt-repository ppa:webupd8team/java"
execute "apt-get update"
execute "echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections"
execute "echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections"
package "oracle-java8-installer" do
    action :install
end
