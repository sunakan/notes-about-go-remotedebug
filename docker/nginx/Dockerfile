FROM nginx:1.17.3-alpine

COPY ./docker/nginx/config/default.conf.template /etc/nginx/conf.d/default.conf.template
COPY ./docker/nginx/config/nginx.conf /etc/nginx/nginx.conf

CMD /bin/sh -c 'sed "s/\${BACKEND_HOST}/$BACKEND_HOST/" /etc/nginx/conf.d/default.conf.template  > /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"'
