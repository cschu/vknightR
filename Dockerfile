FROM r-base:4.5.2

LABEL maintainer="cschu1981@gmail.com"
LABEL version="0.16.0"
LABEL description="vknightR"


ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
#RUN apt-get install -y r-base r-base-dev

RUN R --slave -e 'install.packages(c("devtools", "tidyverse", "optparse", "stringr", "progress"), repos="https://cran.rstudio.com/")'
