FROM docker.io/library/nginx:stable

EXPOSE 8080

RUN \
    # Support running as arbitrary user
    chmod g+rwx /var/cache/nginx /var/run /var/log/nginx && \
    # Users are not allowed to listen to privileged ports
    sed -i.bak 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf && \
    # Comment user directive as master process is run as different user
    sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

USER 1001:0
