#!/bin/bash

query="
CONSTRUCT {
 ?s ?p ?o .
} WHERE {
  {
      SELECT DISTINCT ?s WHERE {
          ?s a <http://schema.org/Book> .
      } LIMIT 1000
  }
  ?s ?p ?o .
}
"


curl 'https://dati.cobis.to.it/sparql?default-graph-uri=&should-sponge=&format=text%2Fturtle&timeout=0&debug=on' \
    --data-urlencode query="${query}" \
    -H 'Accept: text/n3,text/turtle;q=1.0,text/plain;q=0.5,text/html;q=0.5,*/*;q=0.1' --compressed \
    -H 'Accept-Language: en-US,en;q=0.5' \
    -H 'Cache-control: no-cache, max-age=0' \
    -H 'Connection: keep-alive' \
    -H 'Host: dati.cobis.to.it'




