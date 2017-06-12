### What are some common HTTP status codes?
#### Status Codes
- 404 Not Found: The requested resource is unavailable or not found.
- 403 Forbidden: Access is forbidden.
- 500 Internal Server Error: An error code that is used when a specific problem cannot be identified.
- 503 Service Unavailable: Web serve is unavailable.
- 504 Gateway Timeout: The proxy server timed out while trying to contact the secondary web server.
- 200 OK: Request was completed.
- 300 Multiple Choices: Requested resource has too many options and cannot be resolved.
- 301 Moved Permanently: Resource has been assigned a new URI (Uniform Resource Identifier).
- 304 Not Modified: Resource has not been modified since previous version.
- 307 Temporary Redirect: Resource was assigned a new URI temporarily.
- 400 Bad Request: Server cannot process the request because of a client-side error.
- 401 Unauthorized: Request requires user authentication.
- 410 Gone: Resource is unavailable and will not be available again.
- 501 Not Implemented: Server is unable to fulfill the request.

### What is the difference between a GET request and a POST request? When might each be used?
- A GET request is requesting data and a POST request submits data. They are both used to communicate with the server from the client side. A GET request allows data to be visible in the URL, while the POST method does not. POST requests should be used when sending sensitive information. GET requests are used to receive or search for information.

### What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
- Cookies are small pieces of data that are sent back and forth between the server and the browser. They relate to HTTP requests because the browser could be requesting account information or preferences for the user.