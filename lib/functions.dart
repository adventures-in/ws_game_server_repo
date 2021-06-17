import 'dart:async';

import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

FirestoreApi? globalFirestore;

final handler = webSocketHandler(
  (WebSocketChannel webSocket) => webSocket.stream.listen((message) {
    webSocket.sink.add('$message');
  }, onError: (error) {
    print(error);
    webSocket.sink.add(error.toString());
  },
      onDone: () => webSocket.sink
          .add('DONE ${webSocket.closeCode}: ${webSocket.closeReason}')),
);

@CloudFunction()
FutureOr<Response> function(Request request) async {
  // Create the Firestore API client if not already created.
  globalFirestore ??=
      FirestoreApi(await clientViaApplicationDefaultCredentials(scopes: []));

  return handler(request);
}
