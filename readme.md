Very simple app for testing integrations.

    bundle install
    ruby ./app.rb

Open http://localhost:2048/200 in your browser. It will response with a page with HTTP 200 code.

Open http://localhost:2048/404, the app will response with HTTP 404.

You can send `GET`, `POST`, `PATCH`, `PUT` and `DELETE` requests to urls, the app will answer with corresponding HTTP header.

Codes has been taken from [HTTP response status codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status) list.
