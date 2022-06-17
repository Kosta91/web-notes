import os

from website import create_app

app = create_app()

if __name__ == '__main__':
    port = os.getenv('WEB_NOTES_PORT')
    if not port:
        port = 10000
    app.run(debug=True, host='0.0.0.0', port=port)
