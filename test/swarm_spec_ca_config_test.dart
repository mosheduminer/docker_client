import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SwarmSpecCAConfig
void main() {
    var instance = new SwarmSpecCAConfig();

  group('test SwarmSpecCAConfig', () {
    // The duration node certificates are issued for.
    // int nodeCertExpiry (default value: null)
    test('to test the property `nodeCertExpiry`', () async {
      // TODO
    });

    // Configuration for forwarding signing requests to an external certificate authority. 
    // List<SwarmSpecCAConfigExternalCAs> externalCAs (default value: [])
    test('to test the property `externalCAs`', () async {
      // TODO
    });

    // The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format. 
    // String signingCACert (default value: null)
    test('to test the property `signingCACert`', () async {
      // TODO
    });

    // The desired signing CA key for all swarm node TLS leaf certificates, in PEM format. 
    // String signingCAKey (default value: null)
    test('to test the property `signingCAKey`', () async {
      // TODO
    });

    // An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified in `SigningCACert` and `SigningCAKey` 
    // int forceRotate (default value: null)
    test('to test the property `forceRotate`', () async {
      // TODO
    });


  });

}
