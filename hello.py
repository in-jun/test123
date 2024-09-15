import os
from http.server import SimpleHTTPRequestHandler, HTTPServer

# 포트는 환경 변수에서 가져오며 기본값은 8080
port = int(os.environ.get("PORT", 8080))

class HelloHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        self.wfile.write(b"Hello, World!\n")

# 서버 시작
with HTTPServer(('', port), HelloHandler) as server:
    print(f"Starting server on port {port}")
    server.serve_forever()
