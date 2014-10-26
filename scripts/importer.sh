#!/bin/sh

echo "setup LOD"
./jena-fuseki-1.1.1/s-put http://localhost:3030/data/data http://localhost:3030/data/books jena-fuseki-1.1.1/Data/books.ttl

