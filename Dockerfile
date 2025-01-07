FROM rocker/shiny:4.3.1

RUN mkdir /srv/shiny-server/apps

RUN R -e "install.packages(c('shiny','DT','duckdb','openxlsx','lubridate'))"

COPY ./fcra-shiny-new-main /srv/shiny-server/apps/fcra-shiny-new-main

EXPOSE 8180 

#CMD Rscript /srv/shiny-server/apps/fcra-shiny-new-main/app_regular.R
CMD Rscript /srv/shiny-server/apps/fcra-shiny-new-main/app_generative.R
