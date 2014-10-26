fuseki_file = "jena-fuseki-1.1.1"

user_home = "/home/vagrant/"
fuseki_home = user_home + fuseki_file

config_tdb = fuseki_home+"/config-tdb.ttl"
fuseki_script = fuseki_home+"/fuseki"

file config_tdb do
    _file = Chef::Util::FileEdit.new(path)
    _file.search_file_replace('tdb:location "DB2" ;', "tdb:location 'DB2' ;\n    tdb:unionDefaultGraph true ;")
    _file.write_file
end

file fuseki_script do
    _file = Chef::Util::FileEdit.new(path)
    _file.search_file_replace('# Default Fuseki Arguments', "FUSEKI_CONF=$FUSEKI_HOME/config-tdb.ttl\n# Default Fuseki Arguments")
    _file.write_file
end

service "fuseki" do
    action [:start]
end
