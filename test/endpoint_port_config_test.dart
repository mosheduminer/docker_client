import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for EndpointPortConfig
void main() {
    var instance = new EndpointPortConfig();

  group('test EndpointPortConfig', () {
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // String protocol (default value: null)
    test('to test the property `protocol`', () async {
      // TODO
    });

    // The port inside the container.
    // int targetPort (default value: null)
    test('to test the property `targetPort`', () async {
      // TODO
    });

    // The port on the swarm hosts.
    // int publishedPort (default value: null)
    test('to test the property `publishedPort`', () async {
      // TODO
    });

    // The mode in which port is published.  <p><br /></p>  - \"ingress\" makes the target port accessible on every node,   regardless of whether there is a task for the service running on   that node or not. - \"host\" bypasses the routing mesh and publish the port directly on   the swarm node where that service is running. 
    // String publishMode (default value: "ingress")
    test('to test the property `publishMode`', () async {
      // TODO
    });


  });

}
