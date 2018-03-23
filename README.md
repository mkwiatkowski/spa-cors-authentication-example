# SPA CORS authentication example

- Backend: Rails 5.1 + [rack-cors](https://github.com/cyu/rack-cors)
- Frontend: JavaScript + [axios](https://github.com/axios/axios)

## Running the example

To run the example open two terminals. In the first terminal start the Rails API backend:

```
cd backend
bundle
rails s
```

In the second terminal start a static server that will serve the SPA:

```
cd frontend
bundle
rackup
```

Finally visit http://localhost:9292/ to test the app. Frontend served from port 9292 will be able to access API running at port 3000 and store its cookie.

The important pieces to make this work:

- Rack-cors configuration needs to specify `credentials: true`. This will set `Access-Control-Allow-Credentials` header on API responses.
- Rack-cors configuration needs to have `origins` specified. It cannot be a wildcard `*`. This will set `Access-Control-Allow-Origin` header on API responses to the specified hosts.
- All requests from JavaScript need to have `withCredentials` option set to `true`. This will inform the browser to send and store cookies received from the API backend.
