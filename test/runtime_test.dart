import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for Runtime
void main() {
    var instance = new Runtime();

  group('test Runtime', () {
    // Name and, optional, path, of the OCI executable binary.  If the path is omitted, the daemon searches the host's `$PATH` for the binary and uses the first result. 
    // String path (default value: null)
    test('to test the property `path`', () async {
      // TODO
    });

    // List of command-line arguments to pass to the runtime when invoked. 
    // List<String> runtimeArgs (default value: [])
    test('to test the property `runtimeArgs`', () async {
      // TODO
    });


  });

}
