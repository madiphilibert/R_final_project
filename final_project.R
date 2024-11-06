library(httr)
library(rvest)

#TASK 1
get_wiki_covid19_page<-function(){
  wiki_base_url<-"https://en.wikipedia.org/w/index.php"
  page_title<-list(title="Template:COVID-19_testing_by_country")
  response<-GET(wiki_base_url,query=page_title)
  return(response)
}

#TASK 2
root_node<-read_html("response")
table_node<-html_node(root_node,"table")
covid_df<-html_table(table_node)
covid_df[]
