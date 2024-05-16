FROM nginx

COPY nginx.sh /

COPY site /usr/share/nginx/html

RUN chmod +x nginx.sh

CMD [ "./nginx.sh" ]