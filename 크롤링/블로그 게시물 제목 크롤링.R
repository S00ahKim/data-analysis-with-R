# encoding
encoding = function(query){
  query = iconv(query, to = 'UTF-8', toRaw = T)
  query = paste0('%', paste(unlist(query), collapse = '%'))
  query = toupper(query)
  return(query)   
}

# library
if(!require(rvest)){install.packages("rvest");library(rvest)}

# title scraping
title_catch = function(q,n){
  tmp = data.frame(stringsAsFactors=F)
  for(i in 1:n){
    query = encoding(q)
    url = paste0("https://search.naver.com/search.naver?date_from=&date_option=0&date_to=&dup_remove=1&nso=&post_blogurl=&post_blogurl_without=&query=",query,"&sm=tab_pge&srchby=all&st=sim&where=post&start=",(i-1)*10+1)
    html = read_html(url,encoding = "utf-8")
    html1 = html %>% html_nodes("dt") %>% html_nodes("a") %>% html_text() %>% data.frame()
    tmp = rbind(tmp,html1)
    cat(i,"\n")
  }
  return(tmp)
}
f = title_catch("크롤링이란",10)

setwd("D:/R 파일")
write.table(f,"크롤링이란.txt",row.names = F)
