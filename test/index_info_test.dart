import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for IndexInfo
void main() {
    var instance = new IndexInfo();

  group('test IndexInfo', () {
    // Name of the registry, such as \"docker.io\". 
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // List of mirrors, expressed as URIs. 
    // List<String> mirrors (default value: [])
    test('to test the property `mirrors`', () async {
      // TODO
    });

    // Indicates if the registry is part of the list of insecure registries.  If `false`, the registry is insecure. Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  > **Warning**: Insecure registries can be useful when running a local > registry. However, because its use creates security vulnerabilities > it should ONLY be enabled for testing purposes. For increased > security, users should add their CA to their system's list of > trusted CAs instead of enabling this option. 
    // bool secure (default value: null)
    test('to test the property `secure`', () async {
      // TODO
    });

    // Indicates whether this is an official registry (i.e., Docker Hub / docker.io) 
    // bool official (default value: null)
    test('to test the property `official`', () async {
      // TODO
    });


  });

}
