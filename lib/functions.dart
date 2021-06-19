import 'dart:async';
import 'dart:convert';

import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:tech_world_server/present_list.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

FirestoreApi? globalFirestore;
final userIds = <WebSocketChannel, String>{};

final process = <String, Function(Map<String, Object?>)>{'present': (json) => };

/// Assumptions
/// - the first thing sent by the client will be the userId
final handler = webSocketHandler((WebSocketChannel webSocket) {
  // On connection, store the webSocket against the first data event (the userId)
  // and send out the list of userIds currently connected
  final broadcast = webSocket.stream.asBroadcastStream();
  broadcast.first.then((value) {
    userIds[webSocket] = value;
    webSocket.sink.add(jsonEncode(PresentList(userIds.values).toJson()));
  });

  // Now attach a listener to the websocket that will perform the ongoing logic
  broadcast.listen(
    (message) {
      webSocket.sink.add('$message');
    },
    onError: (error) {
      print(error);
      webSocket.sink.add('$error');
    },
    onDone: () => webSocket.sink
        .add('DONE ${webSocket.closeCode}: ${webSocket.closeReason}'),
  );
});

@CloudFunction()
FutureOr<Response> function(Request request) async {
  // Create the Firestore API client if not already created.
  globalFirestore ??=
      FirestoreApi(await clientViaApplicationDefaultCredentials(scopes: []));

  return handler(request);
}
