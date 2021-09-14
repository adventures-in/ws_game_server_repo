import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:ws_game_server/services/locator.dart';

void main() {
  // If there is no client connections service already provided, provide the default.
  final clientConnectionsService =
      Locator.provideDefaultClientConnectionsService();

  var handler = webSocketHandler(clientConnectionsService.messageHandler);

  shelf_io.serve(handler, 'localhost', 8080).then((server) {
    print('Serving at ws://${server.address.host}:${server.port}');
  });
}
