FROM nginx:1-alpine-slim
RUN mkdir -p /usr/share/nginx/html/assets \
            /usr/share/nginx/html/css \
            /usr/share/nginx/html/js
COPY assets/ /usr/share/nginx/html/assets/
COPY css/ /usr/share/nginx/html/css/   
COPY js/ /usr/share/nginx/html/js/
COPY index.html /usr/share/nginx/html/
EXPOSE 80 
CMD ["nginx","-g","daemon off;"]
