import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for TLSInfo
void main() {
    var instance = new TLSInfo();

  group('test TLSInfo', () {
    // The root CA certificate(s) that are used to validate leaf TLS certificates. 
    // String trustRoot (default value: null)
    test('to test the property `trustRoot`', () async {
      // TODO
    });

    // The base64-url-safe-encoded raw subject bytes of the issuer.
    // String certIssuerSubject (default value: null)
    test('to test the property `certIssuerSubject`', () async {
      // TODO
    });

    // The base64-url-safe-encoded raw public key bytes of the issuer. 
    // String certIssuerPublicKey (default value: null)
    test('to test the property `certIssuerPublicKey`', () async {
      // TODO
    });


  });

}
