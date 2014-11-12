#!/bin/sh

echo "setup DBpedia Japanese"
./jena-fuseki-1.1.1/s-put http://localhost:3030/data/data http://ja.dbpedia.org/resource/%E6%9D%B1%E4%BA%AC%E5%9B%BD%E7%AB%8B%E5%8D%9A%E7%89%A9%E9%A4%A8 lod/dbpedia-ttl/東京国立博物館.ttl
./jena-fuseki-1.1.1/s-put http://localhost:3030/data/data http://ja.dbpedia.org/resource/%E4%BA%AC%E9%83%BD%E5%A4%A7%E5%AD%A6%E6%96%87%E5%AD%A6%E7%A0%94%E7%A9%B6%E7%A7%91%E5%9B%B3%E6%9B%B8%E9%A4%A8 lod/dbpedia-ttl/京都大学文学研究科図書館.ttl
./jena-fuseki-1.1.1/s-put http://localhost:3030/data/data http://ja.dbpedia.org/resource/%E5%A4%A7%E9%98%AA%E5%B8%82%E7%AB%8B%E7%BE%8E%E8%A1%93%E9%A4%A8 lod/dbpedia-ttl/大阪市立美術館.ttl
./jena-fuseki-1.1.1/s-put http://localhost:3030/data/data "http://ja.dbpedia.org/resource/%E5%B1%B1%E7%A8%AE%E7%BE%8E%E8%A1%93%E9%A4%A8(%E5%B1%B1%E7%A8%AE%E7%BE%8E%E8%A1%93%E8%B2%A1%E5%9B%A3)" "lod/dbpedia-ttl/山種美術館(山種美術財団).ttl"
./jena-fuseki-1.1.1/s-put http://localhost:3030/data/data http://ja.dbpedia.org/resource/%E6%A8%AA%E6%B5%9C%E7%BE%8E%E8%A1%93%E9%A4%A8 lod/dbpedia-ttl/横浜美術館.ttl
