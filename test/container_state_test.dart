import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for ContainerState
void main() {
    var instance = new ContainerState();

  group('test ContainerState', () {
    // String representation of the container state. Can be one of \"created\", \"running\", \"paused\", \"restarting\", \"removing\", \"exited\", or \"dead\". 
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Whether this container is running.  Note that a running container can be _paused_. The `Running` and `Paused` booleans are not mutually exclusive:  When pausing a container (on Linux), the freezer cgroup is used to suspend all processes in the container. Freezing the process requires the process to be running. As a result, paused containers are both `Running` _and_ `Paused`.  Use the `Status` field instead to determine if a container's state is \"running\". 
    // bool running (default value: null)
    test('to test the property `running`', () async {
      // TODO
    });

    // Whether this container is paused.
    // bool paused (default value: null)
    test('to test the property `paused`', () async {
      // TODO
    });

    // Whether this container is restarting.
    // bool restarting (default value: null)
    test('to test the property `restarting`', () async {
      // TODO
    });

    // Whether this container has been killed because it ran out of memory. 
    // bool oOMKilled (default value: null)
    test('to test the property `oOMKilled`', () async {
      // TODO
    });

    // bool dead (default value: null)
    test('to test the property `dead`', () async {
      // TODO
    });

    // The process ID of this container
    // int pid (default value: null)
    test('to test the property `pid`', () async {
      // TODO
    });

    // The last exit code of this container
    // int exitCode (default value: null)
    test('to test the property `exitCode`', () async {
      // TODO
    });

    // String error (default value: null)
    test('to test the property `error`', () async {
      // TODO
    });

    // The time when this container was last started.
    // String startedAt (default value: null)
    test('to test the property `startedAt`', () async {
      // TODO
    });

    // The time when this container last exited.
    // String finishedAt (default value: null)
    test('to test the property `finishedAt`', () async {
      // TODO
    });

    // Health health (default value: null)
    test('to test the property `health`', () async {
      // TODO
    });


  });

}
