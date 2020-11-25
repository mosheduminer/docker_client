import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SystemVersion
void main() {
    var instance = new SystemVersion();

  group('test SystemVersion', () {
    // SystemVersionPlatform platform (default value: null)
    test('to test the property `platform`', () async {
      // TODO
    });

    // Information about system components 
    // List<SystemVersionComponents> components (default value: [])
    test('to test the property `components`', () async {
      // TODO
    });

    // The version of the daemon
    // String version (default value: null)
    test('to test the property `version`', () async {
      // TODO
    });

    // The default (and highest) API version that is supported by the daemon 
    // String apiVersion (default value: null)
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // The minimum API version that is supported by the daemon 
    // String minAPIVersion (default value: null)
    test('to test the property `minAPIVersion`', () async {
      // TODO
    });

    // The Git commit of the source code that was used to build the daemon 
    // String gitCommit (default value: null)
    test('to test the property `gitCommit`', () async {
      // TODO
    });

    // The version Go used to compile the daemon, and the version of the Go runtime in use. 
    // String goVersion (default value: null)
    test('to test the property `goVersion`', () async {
      // TODO
    });

    // The operating system that the daemon is running on (\"linux\" or \"windows\") 
    // String os (default value: null)
    test('to test the property `os`', () async {
      // TODO
    });

    // The architecture that the daemon is running on 
    // String arch (default value: null)
    test('to test the property `arch`', () async {
      // TODO
    });

    // The kernel version (`uname -r`) that the daemon is running on.  This field is omitted when empty. 
    // String kernelVersion (default value: null)
    test('to test the property `kernelVersion`', () async {
      // TODO
    });

    // Indicates if the daemon is started with experimental features enabled.  This field is omitted when empty / false. 
    // bool experimental (default value: null)
    test('to test the property `experimental`', () async {
      // TODO
    });

    // The date and time that the daemon was compiled. 
    // String buildTime (default value: null)
    test('to test the property `buildTime`', () async {
      // TODO
    });


  });

}
