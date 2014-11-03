name "local"
run_list(
    "recipe[apt-get-update]",
    "recipe[shellshock-fix]",
    "recipe[git]",
    "recipe[open-jdk]",
    "recipe[jena-fuseki]"
)
