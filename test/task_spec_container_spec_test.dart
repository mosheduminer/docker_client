import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for TaskSpecContainerSpec
void main() {
    var instance = new TaskSpecContainerSpec();

  group('test TaskSpecContainerSpec', () {
    // The image name to use for the container
    // String image (default value: null)
    test('to test the property `image`', () async {
      // TODO
    });

    // User-defined key/value data.
    // Map<String, String> labels (default value: {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // The command to be run in the image.
    // List<String> command (default value: [])
    test('to test the property `command`', () async {
      // TODO
    });

    // Arguments to the command.
    // List<String> args (default value: [])
    test('to test the property `args`', () async {
      // TODO
    });

    // The hostname to use for the container, as a valid [RFC 1123](https://tools.ietf.org/html/rfc1123) hostname. 
    // String hostname (default value: null)
    test('to test the property `hostname`', () async {
      // TODO
    });

    // A list of environment variables in the form `VAR=value`. 
    // List<String> env (default value: [])
    test('to test the property `env`', () async {
      // TODO
    });

    // The working directory for commands to run in.
    // String dir (default value: null)
    test('to test the property `dir`', () async {
      // TODO
    });

    // The user inside the container.
    // String user (default value: null)
    test('to test the property `user`', () async {
      // TODO
    });

    // A list of additional groups that the container process will run as. 
    // List<String> groups (default value: [])
    test('to test the property `groups`', () async {
      // TODO
    });

    // TaskSpecContainerSpecPrivileges privileges (default value: null)
    test('to test the property `privileges`', () async {
      // TODO
    });

    // Whether a pseudo-TTY should be allocated.
    // bool TTY (default value: null)
    test('to test the property `TTY`', () async {
      // TODO
    });

    // Open `stdin`
    // bool openStdin (default value: null)
    test('to test the property `openStdin`', () async {
      // TODO
    });

    // Mount the container's root filesystem as read only.
    // bool readOnly (default value: null)
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // Specification for mounts to be added to containers created as part of the service. 
    // List<Mount> mounts (default value: [])
    test('to test the property `mounts`', () async {
      // TODO
    });

    // Signal to stop the container.
    // String stopSignal (default value: null)
    test('to test the property `stopSignal`', () async {
      // TODO
    });

    // Amount of time to wait for the container to terminate before forcefully killing it. 
    // int stopGracePeriod (default value: null)
    test('to test the property `stopGracePeriod`', () async {
      // TODO
    });

    // HealthConfig healthCheck (default value: null)
    test('to test the property `healthCheck`', () async {
      // TODO
    });

    // A list of hostname/IP mappings to add to the container's `hosts` file. The format of extra hosts is specified in the [hosts(5)](http://man7.org/linux/man-pages/man5/hosts.5.html) man page:      IP_address canonical_hostname [aliases...] 
    // List<String> hosts (default value: [])
    test('to test the property `hosts`', () async {
      // TODO
    });

    // TaskSpecContainerSpecDNSConfig dNSConfig (default value: null)
    test('to test the property `dNSConfig`', () async {
      // TODO
    });

    // Secrets contains references to zero or more secrets that will be exposed to the service. 
    // List<TaskSpecContainerSpecSecrets> secrets (default value: [])
    test('to test the property `secrets`', () async {
      // TODO
    });

    // Configs contains references to zero or more configs that will be exposed to the service. 
    // List<TaskSpecContainerSpecConfigs> configs (default value: [])
    test('to test the property `configs`', () async {
      // TODO
    });

    // Isolation technology of the containers running the service. (Windows only) 
    // String isolation (default value: null)
    test('to test the property `isolation`', () async {
      // TODO
    });

    // Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used. 
    // bool init (default value: null)
    test('to test the property `init`', () async {
      // TODO
    });

    // Set kernel namedspaced parameters (sysctls) in the container. The Sysctls option on services accepts the same sysctls as the are supported on containers. Note that while the same sysctls are supported, no guarantees or checks are made about their suitability for a clustered environment, and it's up to the user to determine whether a given sysctl will work properly in a Service. 
    // Map<String, String> sysctls (default value: {})
    test('to test the property `sysctls`', () async {
      // TODO
    });


  });

}
