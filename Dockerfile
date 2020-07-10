FROM prom/prometheus:v2.18.1
USER root 
RUN addgroup -g 1000 nogroup && \
chown -R nobody:nogroup /prometheus 
EXPOSE 9090
USER prometheus
CMD ["/bin/bash"]
