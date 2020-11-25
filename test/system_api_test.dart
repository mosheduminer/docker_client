import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for SystemApi
void main() {
  var instance = SystemApi();

  group('tests for SystemApi', () {
    // Check auth configuration
    //
    // Validate credentials for a registry and, if available, get an identity token for accessing the registry without password. 
    //
    //Future<SystemAuthResponse> systemAuth({ AuthConfig authConfig }) async 
    test('test systemAuth', () async {
      // TODO
    });

    // Get data usage information
    //
    //Future<SystemDataUsageResponse> systemDataUsage() async 
    test('test systemDataUsage', () async {
      // TODO
    });

    // Monitor events
    //
    // Stream real-time events from the server.  Various objects within Docker report events when something happens to them.  Containers report these events: `attach`, `commit`, `copy`, `create`, `destroy`, `detach`, `die`, `exec_create`, `exec_detach`, `exec_start`, `exec_die`, `export`, `health_status`, `kill`, `oom`, `pause`, `rename`, `resize`, `restart`, `start`, `stop`, `top`, `unpause`, and `update`  Images report these events: `delete`, `import`, `load`, `pull`, `push`, `save`, `tag`, and `untag`  Volumes report these events: `create`, `mount`, `unmount`, and `destroy`  Networks report these events: `create`, `connect`, `disconnect`, `destroy`, `update`, and `remove`  The Docker daemon reports these events: `reload`  Services report these events: `create`, `update`, and `remove`  Nodes report these events: `create`, `update`, and `remove`  Secrets report these events: `create`, `update`, and `remove`  Configs report these events: `create`, `update`, and `remove` 
    //
    //Future<SystemEventsResponse> systemEvents({ String since, String until, String filters }) async 
    test('test systemEvents', () async {
      // TODO
    });

    // Get system information
    //
    //Future<SystemInfo> systemInfo() async 
    test('test systemInfo', () async {
      // TODO
    });

    // Ping
    //
    // This is a dummy endpoint you can use to test if the server is accessible.
    //
    //Future<String> systemPing() async 
    test('test systemPing', () async {
      // TODO
    });

    // Ping
    //
    // This is a dummy endpoint you can use to test if the server is accessible.
    //
    //Future<String> systemPingHead() async 
    test('test systemPingHead', () async {
      // TODO
    });

    // Get version
    //
    // Returns the version of Docker that is running and various information about the system that Docker is running on.
    //
    //Future<SystemVersion> systemVersion() async 
    test('test systemVersion', () async {
      // TODO
    });

  });
}
