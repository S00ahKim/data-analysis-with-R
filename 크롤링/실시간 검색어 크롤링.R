# 실시간 검색어 크롤링 (기준 사이트: 네이버)

if(!require(rvest)){install.packages("rvest");library(rvest)}

url = "https://www.naver.com/"
htxt = read_html(url,encoding="utf-8")
t1 = html_nodes(htxt, 'span.ah_k') %>% html_text()
t1[1:20]