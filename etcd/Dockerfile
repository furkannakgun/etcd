FROM quay.io/coreos/etcd:latest

RUN addgroup naapgroup && \
    adduser -D -u 1001 naapuser naapgroup

EXPOSE 2379
EXPOSE 2380

COPY load-default-values.sh /bin/
RUN chmod +x /bin/load-default-values.sh
USER naapuser

ENTRYPOINT [ "/bin/load-default-values.sh" ]

