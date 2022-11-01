FROM nginx:1.19.0-alpine

RUN mkdir -p /home/web
ENV APP_HOME=/home/web/giict/
RUN mkdir $APP_HOME
COPY ./GIICT_Vanilla $APP_HOME

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d