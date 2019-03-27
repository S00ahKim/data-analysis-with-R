# image crawling
# ex: 강아지 사진 네이버에서 가져오기

if(!require(RCurl)){install.packages("RCurl");library(RCurl)}
if(!require(XML)){install.packages("XML");library(XML)}
if(!require(dplyr)){install.packages("dplyr");library(dplyr)}
if(!require(rvest)){install.packages("rvest");library(rvest)}


url = "https://search.naver.com/search.naver?where=image&sm=tab_jum&query=dog"

#쿼리를 따로 지정하는 방법 
#q = "dog"
#url = paste0("https://search.naver.com/search.naver?where=image&sm=tab_jum&query=",q)

htxt = read_html(url)
t1 = html_nodes(htxt, 'a')

img_tag_pattern = "<img.*?>"
img_tag = t1 %>% regmatches(regexpr(img_tag_pattern, .))

src_href_pattern = "(https:.+type=b400)"
src_href = img_tag %>% regmatches(regexpr(src_href_pattern, ., perl=T))
src_href

getwd()
setwd("write your working directory!")
download.file(src_href[2], "test_image2.jpg",mode="wb")

for(i in 1:length(src_href)){
  download.file(src_href[i], paste0("image_", i,".jpg"),mode="wb")
}

