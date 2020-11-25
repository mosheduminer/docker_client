import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for NetworkSettings
void main() {
    var instance = new NetworkSettings();

  group('test NetworkSettings', () {
    // Name of the network'a bridge (for example, `docker0`).
    // String bridge (default value: null)
    test('to test the property `bridge`', () async {
      // TODO
    });

    // SandboxID uniquely represents a container's network stack.
    // String sandboxID (default value: null)
    test('to test the property `sandboxID`', () async {
      // TODO
    });

    // Indicates if hairpin NAT should be enabled on the virtual interface. 
    // bool hairpinMode (default value: null)
    test('to test the property `hairpinMode`', () async {
      // TODO
    });

    // IPv6 unicast address using the link-local prefix.
    // String linkLocalIPv6Address (default value: null)
    test('to test the property `linkLocalIPv6Address`', () async {
      // TODO
    });

    // Prefix length of the IPv6 unicast address.
    // int linkLocalIPv6PrefixLen (default value: null)
    test('to test the property `linkLocalIPv6PrefixLen`', () async {
      // TODO
    });

    // PortMap describes the mapping of container ports to host ports, using the container's port-number and protocol as key in the format `<port>/<protocol>`, for example, `80/udp`.  If a container's port is mapped for multiple protocols, separate entries are added to the mapping table. 
    // Map<String, List<PortBinding>> ports (default value: {})
    test('to test the property `ports`', () async {
      // TODO
    });

    // SandboxKey identifies the sandbox
    // String sandboxKey (default value: null)
    test('to test the property `sandboxKey`', () async {
      // TODO
    });

    // 
    // List<Address> secondaryIPAddresses (default value: [])
    test('to test the property `secondaryIPAddresses`', () async {
      // TODO
    });

    // 
    // List<Address> secondaryIPv6Addresses (default value: [])
    test('to test the property `secondaryIPv6Addresses`', () async {
      // TODO
    });

    // EndpointID uniquely represents a service endpoint in a Sandbox.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // String endpointID (default value: null)
    test('to test the property `endpointID`', () async {
      // TODO
    });

    // Gateway address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // String gateway (default value: null)
    test('to test the property `gateway`', () async {
      // TODO
    });

    // Global IPv6 address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // String globalIPv6Address (default value: null)
    test('to test the property `globalIPv6Address`', () async {
      // TODO
    });

    // Mask length of the global IPv6 address.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // int globalIPv6PrefixLen (default value: null)
    test('to test the property `globalIPv6PrefixLen`', () async {
      // TODO
    });

    // IPv4 address for the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // String iPAddress (default value: null)
    test('to test the property `iPAddress`', () async {
      // TODO
    });

    // Mask length of the IPv4 address.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // int iPPrefixLen (default value: null)
    test('to test the property `iPPrefixLen`', () async {
      // TODO
    });

    // IPv6 gateway address for this network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // String iPv6Gateway (default value: null)
    test('to test the property `iPv6Gateway`', () async {
      // TODO
    });

    // MAC address for the container on the default \"bridge\" network.  <p><br /></p>  > **Deprecated**: This field is only propagated when attached to the > default \"bridge\" network. Use the information from the \"bridge\" > network inside the `Networks` map instead, which contains the same > information. This field was deprecated in Docker 1.9 and is scheduled > to be removed in Docker 17.12.0 
    // String macAddress (default value: null)
    test('to test the property `macAddress`', () async {
      // TODO
    });

    // Information about all networks that the container is connected to. 
    // Map<String, EndpointSettings> networks (default value: {})
    test('to test the property `networks`', () async {
      // TODO
    });


  });

}
