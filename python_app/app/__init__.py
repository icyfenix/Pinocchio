import endpoints
import os

def start(debug=False):
    endpoints.app.run(debug=debug, host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
