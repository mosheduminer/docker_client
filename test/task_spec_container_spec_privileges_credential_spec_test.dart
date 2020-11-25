import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for TaskSpecContainerSpecPrivilegesCredentialSpec
void main() {
    var instance = new TaskSpecContainerSpecPrivilegesCredentialSpec();

  group('test TaskSpecContainerSpecPrivilegesCredentialSpec', () {
    // Load credential spec from a Swarm Config with the given ID. The specified config must also be present in the Configs field with the Runtime property set.  <p><br /></p>   > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive. 
    // String config (default value: null)
    test('to test the property `config`', () async {
      // TODO
    });

    // Load credential spec from this file. The file is read by the daemon, and must be present in the `CredentialSpecs` subdirectory in the docker data directory, which defaults to `C:\\ProgramData\\Docker\\` on Windows.  For example, specifying `spec.json` loads `C:\\ProgramData\\Docker\\CredentialSpecs\\spec.json`.  <p><br /></p>  > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive. 
    // String file (default value: null)
    test('to test the property `file`', () async {
      // TODO
    });

    // Load credential spec from this value in the Windows registry. The specified registry value must be located in:  `HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Virtualization\\Containers\\CredentialSpecs`  <p><br /></p>   > **Note**: `CredentialSpec.File`, `CredentialSpec.Registry`, > and `CredentialSpec.Config` are mutually exclusive. 
    // String registry (default value: null)
    test('to test the property `registry`', () async {
      // TODO
    });


  });

}
