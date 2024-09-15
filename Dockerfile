FROM alpine:latest

RUN echo '#!/bin/sh' > /print-port.sh && \
    echo 'echo "PORT: ${PORT:-8080}"' >> /print-port.sh && \
    chmod +x /print-port.sh

CMD ["/print-port.sh"]
