name "cache"
run_list(
    "recipe[apt-get-update]",
    "recipe[shellshock-fix]",
    "recipe[git]",
    "recipe[git-clone-lod-app]",
    "recipe[ant]",
    "recipe[add-apt-repository]",
    "recipe[oracle-jdk]",
    "recipe[jena-fuseki]"
)
