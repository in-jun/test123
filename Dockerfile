# Use busybox for a minimal image
FROM busybox

# Create a simple HTTP server with busybox
CMD echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\n\nHello, World!" | nc -l -p 8080
