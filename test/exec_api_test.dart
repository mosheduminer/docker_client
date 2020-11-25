import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for ExecApi
void main() {
  var instance = ExecApi();

  group('tests for ExecApi', () {
    // Create an exec instance
    //
    // Run a command inside a running container.
    //
    //Future<IdResponse> containerExec(String id, InlineObject execConfig) async 
    test('test containerExec', () async {
      // TODO
    });

    // Inspect an exec instance
    //
    // Return low-level information about an exec instance.
    //
    //Future<ExecInspectResponse> execInspect(String id) async 
    test('test execInspect', () async {
      // TODO
    });

    // Resize an exec instance
    //
    // Resize the TTY session used by an exec instance. This endpoint only works if `tty` was specified as part of creating and starting the exec instance. 
    //
    //Future execResize(String id, { int h, int w }) async 
    test('test execResize', () async {
      // TODO
    });

    // Start an exec instance
    //
    // Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command. 
    //
    //Future execStart(String id, { InlineObject1 execStartConfig }) async 
    test('test execStart', () async {
      // TODO
    });

  });
}
