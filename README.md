# tech_world_server

Using [shelf_web_socket](https://pub.dev/packages/shelf_web_socket) with [functions_framework](https://pub.dev/packages/functions_framework) for a serverless websocket server.

## Running locally

We can debug with a launch configuration that runs `bin/server.dart`, eg:

```json
{
  "name": "tech_world_server",
  "request": "launch",
  "type": "dart",
  "program": "bin/server.dart"
},
```

