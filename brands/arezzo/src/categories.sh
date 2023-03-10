category=$1
page_size=${2-2400}

curl "https://www.arezzo.com.br/arezzocoocc/v2/arezzo/products/search?category=$1&currentPage=0&pageSize=$2&fields=FULL&storeFinder=false" \
  -H 'authority: www.arezzo.com.br' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: pt-BR,pt;q=0.6' \
  -H 'headless: true' \
  -H 'referer: https://www.arezzo.com.br/c/sapatos' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-gpc: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36' \
  --compressed