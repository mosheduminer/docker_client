import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ContainerConfig
void main() {
    var instance = new ContainerConfig();

  group('test ContainerConfig', () {
    // The hostname to use for the container, as a valid RFC 1123 hostname.
    // String hostname (default value: null)
    test('to test the property `hostname`', () async {
      // TODO
    });

    // The domain name to use for the container.
    // String domainname (default value: null)
    test('to test the property `domainname`', () async {
      // TODO
    });

    // The user that commands are run as inside the container.
    // String user (default value: null)
    test('to test the property `user`', () async {
      // TODO
    });

    // Whether to attach to `stdin`.
    // bool attachStdin (default value: false)
    test('to test the property `attachStdin`', () async {
      // TODO
    });

    // Whether to attach to `stdout`.
    // bool attachStdout (default value: true)
    test('to test the property `attachStdout`', () async {
      // TODO
    });

    // Whether to attach to `stderr`.
    // bool attachStderr (default value: true)
    test('to test the property `attachStderr`', () async {
      // TODO
    });

    // An object mapping ports to an empty object in the form:  `{\"<port>/<tcp|udp|sctp>\": {}}` 
    // Map<String, Object> exposedPorts (default value: {})
    test('to test the property `exposedPorts`', () async {
      // TODO
    });

    // Attach standard streams to a TTY, including `stdin` if it is not closed. 
    // bool tty (default value: false)
    test('to test the property `tty`', () async {
      // TODO
    });

    // Open `stdin`
    // bool openStdin (default value: false)
    test('to test the property `openStdin`', () async {
      // TODO
    });

    // Close `stdin` after one attached client disconnects
    // bool stdinOnce (default value: false)
    test('to test the property `stdinOnce`', () async {
      // TODO
    });

    // A list of environment variables to set inside the container in the form `[\"VAR=value\", ...]`. A variable without `=` is removed from the environment, rather than to have an empty value. 
    // List<String> env (default value: [])
    test('to test the property `env`', () async {
      // TODO
    });

    // Command to run specified as a string or an array of strings. 
    // List<String> cmd (default value: [])
    test('to test the property `cmd`', () async {
      // TODO
    });

    // HealthConfig healthcheck (default value: null)
    test('to test the property `healthcheck`', () async {
      // TODO
    });

    // Command is already escaped (Windows only)
    // bool argsEscaped (default value: null)
    test('to test the property `argsEscaped`', () async {
      // TODO
    });

    // The name of the image to use when creating the container/ 
    // String image (default value: null)
    test('to test the property `image`', () async {
      // TODO
    });

    // An object mapping mount point paths inside the container to empty objects. 
    // Map<String, Object> volumes (default value: {})
    test('to test the property `volumes`', () async {
      // TODO
    });

    // The working directory for commands to run in.
    // String workingDir (default value: null)
    test('to test the property `workingDir`', () async {
      // TODO
    });

    // The entry point for the container as a string or an array of strings.  If the array consists of exactly one empty string (`[\"\"]`) then the entry point is reset to system default (i.e., the entry point used by docker when there is no `ENTRYPOINT` instruction in the `Dockerfile`). 
    // List<String> entrypoint (default value: [])
    test('to test the property `entrypoint`', () async {
      // TODO
    });

    // Disable networking for the container.
    // bool networkDisabled (default value: null)
    test('to test the property `networkDisabled`', () async {
      // TODO
    });

    // MAC address of the container.
    // String macAddress (default value: null)
    test('to test the property `macAddress`', () async {
      // TODO
    });

    // `ONBUILD` metadata that were defined in the image's `Dockerfile`. 
    // List<String> onBuild (default value: [])
    test('to test the property `onBuild`', () async {
      // TODO
    });

    // User-defined key/value metadata.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // Signal to stop a container as a string or unsigned integer. 
    // String stopSignal (default value: "SIGTERM")
    test('to test the property `stopSignal`', () async {
      // TODO
    });

    // Timeout to stop a container in seconds.
    // int stopTimeout (default value: null)
    test('to test the property `stopTimeout`', () async {
      // TODO
    });

    // Shell for when `RUN`, `CMD`, and `ENTRYPOINT` uses a shell. 
    // List<String> shell (default value: [])
    test('to test the property `shell`', () async {
      // TODO
    });


  });

}
