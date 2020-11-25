import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for IPAM
void main() {
    var instance = new IPAM();

  group('test IPAM', () {
    // Name of the IPAM driver to use.
    // String driver (default value: "default")
    test('to test the property `driver`', () async {
      // TODO
    });

    // List of IPAM configuration options, specified as a map:  ``` {\"Subnet\": <CIDR>, \"IPRange\": <CIDR>, \"Gateway\": <IP address>, \"AuxAddress\": <device_name:IP address>} ``` 
    // List<Map<String, String>> config (default value: [])
    test('to test the property `config`', () async {
      // TODO
    });

    // Driver-specific options, specified as a map.
    // Map<String, String> options (default value: {})
    test('to test the property `options`', () async {
      // TODO
    });


  });

}
