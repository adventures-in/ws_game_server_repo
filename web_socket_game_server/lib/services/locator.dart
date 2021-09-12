import 'package:web_socket_game_server/services/connections_service.dart';
import 'package:web_socket_game_server/services/firestore_service.dart';

/// Services are nullable so that we can only provide a service if none exists,
/// allowing for mocks to be set in tests.
///
/// All get_Service functions return non-nullable types. Ensuring the
/// services are not null when they are accessed is up to the developer.
class Locator {
  static FirestoreService getFirestoreService() => _firestoreService!;
  static ConnectionsService getConnectionsService() => _connectionsService!;

  static void provideFirestoreService(FirestoreService service,
      {bool overwrite = true}) {
    if (overwrite == false && _firestoreService != null) return;
    _firestoreService = service;
  }

  // Sets _connectionsService if not already set
  static void provide({ConnectionsService? connectionsService}) {
    _connectionsService ??= connectionsService;
  }

  // Sets _connectionsService to the default, if not already set
  static ConnectionsService provideDefaultConnectionsService() {
    _connectionsService ??= ConnectionsService();
    return _connectionsService!;
  }

  static bool get hasFirestoreService => _firestoreService != null;
  static bool get needsFirestoreService => _firestoreService == null;
  static bool get hasConnectionsService => _connectionsService != null;
  static bool get needsConnectionsService => _connectionsService == null;

  static FirestoreService? _firestoreService;
  static ConnectionsService? _connectionsService;
}
