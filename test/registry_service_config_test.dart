import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for RegistryServiceConfig
void main() {
    var instance = new RegistryServiceConfig();

  group('test RegistryServiceConfig', () {
    // List of IP ranges to which nondistributable artifacts can be pushed, using the CIDR syntax [RFC 4632](https://tools.ietf.org/html/4632).  Some images (for example, Windows base images) contain artifacts whose distribution is restricted by license. When these images are pushed to a registry, restricted artifacts are not included.  This configuration override this behavior, and enables the daemon to push nondistributable artifacts to all registries whose resolved IP address is within the subnet described by the CIDR syntax.  This option is useful when pushing images containing nondistributable artifacts to a registry on an air-gapped network so hosts on that network can pull the images without connecting to another server.  > **Warning**: Nondistributable artifacts typically have restrictions > on how and where they can be distributed and shared. Only use this > feature to push artifacts to private registries and ensure that you > are in compliance with any terms that cover redistributing > nondistributable artifacts. 
    // List<String> allowNondistributableArtifactsCIDRs (default value: [])
    test('to test the property `allowNondistributableArtifactsCIDRs`', () async {
      // TODO
    });

    // List of registry hostnames to which nondistributable artifacts can be pushed, using the format `<hostname>[:<port>]` or `<IP address>[:<port>]`.  Some images (for example, Windows base images) contain artifacts whose distribution is restricted by license. When these images are pushed to a registry, restricted artifacts are not included.  This configuration override this behavior for the specified registries.  This option is useful when pushing images containing nondistributable artifacts to a registry on an air-gapped network so hosts on that network can pull the images without connecting to another server.  > **Warning**: Nondistributable artifacts typically have restrictions > on how and where they can be distributed and shared. Only use this > feature to push artifacts to private registries and ensure that you > are in compliance with any terms that cover redistributing > nondistributable artifacts. 
    // List<String> allowNondistributableArtifactsHostnames (default value: [])
    test('to test the property `allowNondistributableArtifactsHostnames`', () async {
      // TODO
    });

    // List of IP ranges of insecure registries, using the CIDR syntax ([RFC 4632](https://tools.ietf.org/html/4632)). Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  By default, local registries (`127.0.0.0/8`) are configured as insecure. All other registries are secure. Communicating with an insecure registry is not possible if the daemon assumes that registry is secure.  This configuration override this behavior, insecure communication with registries whose resolved IP address is within the subnet described by the CIDR syntax.  Registries can also be marked insecure by hostname. Those registries are listed under `IndexConfigs` and have their `Secure` field set to `false`.  > **Warning**: Using this option can be useful when running a local > registry, but introduces security vulnerabilities. This option > should therefore ONLY be used for testing purposes. For increased > security, users should add their CA to their system's list of trusted > CAs instead of enabling this option. 
    // List<String> insecureRegistryCIDRs (default value: [])
    test('to test the property `insecureRegistryCIDRs`', () async {
      // TODO
    });

    // Map<String, IndexInfo> indexConfigs (default value: {})
    test('to test the property `indexConfigs`', () async {
      // TODO
    });

    // List of registry URLs that act as a mirror for the official (`docker.io`) registry. 
    // List<String> mirrors (default value: [])
    test('to test the property `mirrors`', () async {
      // TODO
    });


  });

}
