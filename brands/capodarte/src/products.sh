curl "https://www.capodarte.com.br/api/catalog_system/pub/products/search?_from=$1&_to=$2" \
  -H 'authority: www.capodarte.com.br' \
  -H 'accept: application/json' \
  -H 'accept-language: pt-BR,pt;q=0.9' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'pragma: no-cache' \
  -H 'referer: https://www.capodarte.com.br/novidades?O=OrderByReleaseDateDESC' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-gpc: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --compressed

